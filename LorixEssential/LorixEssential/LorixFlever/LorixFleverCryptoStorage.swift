import UIKit
import CommonCrypto
import Security

struct LorixFleverAES {
    private let LorixFleverKeyData: Data
    private let LorixFleverIVData: Data
    
    init?() {
        guard let key = LorixFleverConfig.shared.LorixFleverAESKey.data(using: .utf8),
              let iv = LorixFleverConfig.shared.LorixFleverAESIV.data(using: .utf8),
              key.count == kCCKeySizeAES128,
              iv.count == kCCBlockSizeAES128 else {
            return nil
        }
        LorixFleverKeyData = key
        LorixFleverIVData = iv
    }
    
    func LorixFleverEncrypt(_ text: String) -> String? {
        guard let data = text.data(using: .utf8) else { return nil }
        return LorixFleverProcess(input: data, operation: kCCEncrypt)?.LorixFleverHexString()
    }
    
    func LorixFleverDecrypt(hex: String) -> String? {
        guard let data = Data(LorixFleverHex: hex),
              let result = LorixFleverProcess(input: data, operation: kCCDecrypt) else {
            return nil
        }
        return String(data: result, encoding: .utf8)
    }
    
    private func LorixFleverProcess(input: Data, operation: Int) -> Data? {
        let outputLength = input.count + kCCBlockSizeAES128
        var outputData = Data(count: outputLength)
        var movedBytes: size_t = 0
        let status = outputData.withUnsafeMutableBytes { outputBuffer in
            input.withUnsafeBytes { inputBuffer in
                LorixFleverIVData.withUnsafeBytes { ivBuffer in
                    LorixFleverKeyData.withUnsafeBytes { keyBuffer in
                        CCCrypt(
                            CCOperation(operation),
                            CCAlgorithm(kCCAlgorithmAES),
                            CCOptions(kCCOptionPKCS7Padding),
                            keyBuffer.baseAddress,
                            LorixFleverKeyData.count,
                            ivBuffer.baseAddress,
                            inputBuffer.baseAddress,
                            input.count,
                            outputBuffer.baseAddress,
                            outputLength,
                            &movedBytes
                        )
                    }
                }
            }
        }
        guard status == kCCSuccess else { return nil }
        outputData.removeSubrange(movedBytes..<outputData.count)
        return outputData
    }
}

@objc final class LorixFleverVault: NSObject {
    private static var LorixFleverServiceName: String {
        let bundle = Bundle.main.bundleIdentifier ?? "com.lorix.flever"
        return "\(bundle).lorix.flever.vault"
    }
    
    private static var LorixFleverDeviceAccount: String {
        "\(LorixFleverServiceName).\(LorixFleverText.deviceSeed)"
    }
    
    private static var LorixFleverPasswordAccount: String {
        "\(LorixFleverServiceName).\(LorixFleverText.passwordSeed)"
    }
    
    static func LorixFleverDeviceID() -> String {
        if let saved = LorixFleverLoad(account: LorixFleverDeviceAccount) {
            return saved
        }
        let fresh = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        LorixFleverSave(value: fresh, account: LorixFleverDeviceAccount)
        return fresh
    }
    
    static func LorixFleverSavePassword(_ password: String) {
        LorixFleverSave(value: password, account: LorixFleverPasswordAccount)
    }
    
    static func LorixFleverPassword() -> String? {
        LorixFleverLoad(account: LorixFleverPasswordAccount)
    }
    
    private static func LorixFleverLoad(account: String) -> String? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: LorixFleverServiceName,
            kSecAttrAccount as String: account,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        var result: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        guard status == errSecSuccess,
              let data = result as? Data else {
            return nil
        }
        return String(data: data, encoding: .utf8)
    }
    
    private static func LorixFleverSave(value: String, account: String) {
        LorixFleverDelete(account: account)
        guard let data = value.data(using: .utf8) else { return }
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: LorixFleverServiceName,
            kSecAttrAccount as String: account,
            kSecValueData as String: data,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
        SecItemAdd(query as CFDictionary, nil)
    }
    
    private static func LorixFleverDelete(account: String) {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: LorixFleverServiceName,
            kSecAttrAccount as String: account
        ]
        SecItemDelete(query as CFDictionary)
    }
}

extension Data {
    func LorixFleverHexString() -> String {
        map { String(format: LorixFleverText.hexByte, $0) }.joined()
    }
    
    init?(LorixFleverHex hex: String) {
        guard hex.count % 2 == 0 else { return nil }
        var result = Data()
        result.reserveCapacity(hex.count / 2)
        var index = hex.startIndex
        while index < hex.endIndex {
            let next = hex.index(index, offsetBy: 2)
            guard let byte = UInt8(hex[index..<next], radix: 16) else { return nil }
            result.append(byte)
            index = next
        }
        self = result
    }
}
