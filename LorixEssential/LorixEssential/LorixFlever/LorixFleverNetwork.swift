import UIKit

final class LorixFleverNetwork: NSObject {
    static let shared = LorixFleverNetwork()
    
    private override init() {
        super.init()
    }
    
    func LorixFleverPost(
        _ path: String,
        params: [String: Any],
        paymentFlow: Bool = false,
        completion: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }
    ) {
        guard let url = URL(string: LorixFleverConfig.shared.LorixFleverBaseURL + path) else {
            completion(.failure(NSError(domain: LorixFleverText.urlError, code: 400)))
            return
        }
        
        guard let json = LorixFleverNetwork.LorixFleverJSONString(from: params),
              let aes = LorixFleverAES(),
              let encrypted = aes.LorixFleverEncrypt(json),
              let body = encrypted.data(using: .utf8) else {
            completion(.failure(NSError(domain: LorixFleverText.decryptError, code: 401)))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = LorixFleverText.post
        request.httpBody = body
        request.timeoutInterval = 15
        request.setValue(LorixFleverText.json, forHTTPHeaderField: LorixFleverText.contentType)
        request.setValue(LorixFleverConfig.shared.LorixFleverAppID, forHTTPHeaderField: LorixFleverText.appID)
        request.setValue(Bundle.main.LorixFleverAppVersion, forHTTPHeaderField: LorixFleverText.appVersion)
        request.setValue(LorixFleverVault.LorixFleverDeviceID(), forHTTPHeaderField: LorixFleverText.deviceNo)
        request.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: LorixFleverText.language)
        request.setValue(UserDefaults.standard.string(forKey: LorixFleverStorageKey.userToken) ?? "", forHTTPHeaderField: LorixFleverText.loginToken)
        request.setValue(UserDefaults.standard.string(forKey: LorixFleverStorageKey.pushToken) ?? "", forHTTPHeaderField: LorixFleverText.pushToken)
        
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error {
                DispatchQueue.main.async { completion(.failure(error)) }
                return
            }
            guard let data else {
                DispatchQueue.main.async {
                    completion(.failure(NSError(domain: LorixFleverText.noData, code: 1000)))
                }
                return
            }
            self.LorixFleverHandle(data: data, paymentFlow: paymentFlow, completion: completion)
        }.resume()
    }
    
    private func LorixFleverHandle(
        data: Data,
        paymentFlow: Bool,
        completion: @escaping (Result<[String: Any]?, Error>) -> Void
    ) {
        do {
            guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                throw NSError(domain: LorixFleverText.invalidJSON, code: 1001)
            }
            
            if paymentFlow {
                guard let code = json[LorixFleverText.code] as? String,
                      code == LorixFleverText.successCode else {
                    DispatchQueue.main.async {
                        completion(.failure(NSError(domain: LorixFleverText.payError, code: 1001)))
                    }
                    return
                }
                DispatchQueue.main.async { completion(.success([:])) }
                return
            }
            
            guard let code = json[LorixFleverText.code] as? String,
                  code == LorixFleverText.successCode,
                  let encryptedResult = json[LorixFleverText.result] as? String else {
                throw NSError(domain: json[LorixFleverText.message] as? String ?? LorixFleverText.dataError, code: 1002)
            }
            
            guard let aes = LorixFleverAES(),
                  let decrypted = aes.LorixFleverDecrypt(hex: encryptedResult),
                  let resultData = decrypted.data(using: .utf8),
                  let result = try JSONSerialization.jsonObject(with: resultData) as? [String: Any] else {
                throw NSError(domain: LorixFleverText.decryptError, code: 1003)
            }
            
            DispatchQueue.main.async {
                completion(.success(result))
            }
        } catch {
            DispatchQueue.main.async {
                completion(.failure(error))
            }
        }
    }
    
    static func LorixFleverJSONString(from dict: [String: Any]) -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: dict) else { return nil }
        return String(data: data, encoding: .utf8)
    }
}

private extension Bundle {
    var LorixFleverAppVersion: String {
        object(forInfoDictionaryKey: LorixFleverText.versionKey) as? String ?? ""
    }
}
