import UIKit

final class LorixFleverNetwork: NSObject {
    static let audioRelayLor = LorixFleverNetwork()
    
    private override init() {
        super.init()
    }
    
    func LorixFleverPost(
        _ complexTextureLor: String,
        acousticDetailRix: [String: Any],
        layeredRhythmRix: Bool = false,
        polyphonicVocalLor: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }
    ) {
        guard let soundVistaRix = URL(string: LorixFleverConfig.audioRelayLor.LorixFleverBaseURL + complexTextureLor) else {
            polyphonicVocalLor(.failure(NSError(domain: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "fJC+pWGeG5jws2uNjnJtPvv0f1fW0Bp2eLvNctf5lwdPIkbIoTau+0s="), code: 400)))
            return
        }
        
        guard let tonalClarityRix = LorixFleverNetwork.LorixFleverJSONString(from: acousticDetailRix),
              let soundExpeditionRix = LorixFleverAES(),
              let vocalJourneyLor = soundExpeditionRix.LorixFleverEncrypt(tonalClarityRix),
              let vocalPanoramaLor = vocalJourneyLor.data(using: .utf8) else {
            polyphonicVocalLor(.failure(NSError(domain: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "cGss71KQKMcbkisBeqDuKsgogyWWxkbcLeMJgvUY54U0zvbcsR7lWsXDPXUasfMD"), code: 401)))
            return
        }
        
        var vocalBeaconLor = URLRequest(url: soundVistaRix)
        vocalBeaconLor.httpMethod = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "FmHB/V8ji8nfd/LAYzAF4v7d7lbHSI1j3K6cp3BH+y+NwgQV")
        vocalBeaconLor.httpBody = vocalPanoramaLor
        vocalBeaconLor.cachePolicy = .reloadIgnoringLocalCacheData
        vocalBeaconLor.timeoutInterval = 15
        LorixFleverSetHeader(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "h7AUAE/3lHw7vKjZ9Kng5M9qOFtgLSk1PtdkxH5dddqChoIEzWoo/aryEbU="), value: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "nCgRFayRiCVmGAD+kdo5R1JruZ+eR8Qm0jDvzbRNkwmZtdURXAslNv5ZayxAdote"), request: &vocalBeaconLor)
        LorixFleverSetHeader(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "eXjYU8ZYHx+WAYk+ZspoINRCR+kRMs+Ir8/wW/wpsLa5UAJpwQ=="), value: LorixFleverConfig.audioRelayLor.LorixFleverAppID, request: &vocalBeaconLor)
        LorixFleverSetHeader(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "LdDXGQaXQflNGIYpvfv8+nxoJ237hlHSpVKS2yZyULOmCOW7uEKJFLwE"), value: Bundle.main.LorixFleverAppVersion, request: &vocalBeaconLor)
        LorixFleverSetHeader(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "sVB/A4o/r7AXrg9OxyfpUbDRRJ/EkP1Fx5J6yl8w6NObGgh9+phBBg=="), value: LorixFleverVault.LorixFleverDeviceID(), request: &vocalBeaconLor)
        LorixFleverSetHeader(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "W5BSRZLlQkuJutaPduxr55eRZIiZBPx/1nHZErn9Xx6MUNiPODUlRg=="), value: Locale.current.languageCode ?? "", request: &vocalBeaconLor)
        LorixFleverSetHeader(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "xbzLuhod08ZuzLISpSPZuQRZCy14Cjai3+O32eywSu2jVg9arQVCQxZm"), value: UserDefaults.standard.string(forKey: LorixFleverStorageKey.vibratoDepthLor) ?? "", request: &vocalBeaconLor)
        LorixFleverSetHeader(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "+ny3B5PMxH8s/9wQ6bFD6A42SY+S9utdub/OTcpqK2AyfLunLO/mrRc="), value: UserDefaults.standard.string(forKey: LorixFleverStorageKey.acousticEnvironmentRix) ?? "", request: &vocalBeaconLor)
        LorixFleverPrintRequest(
            soundVistaRix: soundVistaRix,
            complexTextureLor: complexTextureLor,
            acousticDetailRix: acousticDetailRix,
            tonalClarityRix: tonalClarityRix,
            vocalJourneyLor: vocalJourneyLor,
            vocalBeaconLor: vocalBeaconLor
        )
        LorixFleverSend(vocalBeaconLor: vocalBeaconLor, layeredRhythmRix: layeredRhythmRix, rhythmicWaveRix: 0, polyphonicVocalLor: polyphonicVocalLor)
    }
    
    private func LorixFleverSetHeader(_ soundAnchorRix: String, value vocalBeaconLor: String, request acousticSignalRix: inout URLRequest) {
        guard soundAnchorRix.isEmpty == false else {
            print("LorixFlever invalid empty header name, value:", vocalBeaconLor)
            return
        }
        acousticSignalRix.setValue(vocalBeaconLor, forHTTPHeaderField: soundAnchorRix)
    }
    
    private func LorixFleverSend(
        vocalBeaconLor: URLRequest,
        layeredRhythmRix: Bool,
        rhythmicWaveRix: Int,
        polyphonicVocalLor: @escaping (Result<[String: Any]?, Error>) -> Void
    ) {
        let waveRhythmLor = URLSessionConfiguration.default
        waveRhythmLor.requestCachePolicy = .reloadIgnoringLocalCacheData
        waveRhythmLor.timeoutIntervalForRequest = 15
        waveRhythmLor.timeoutIntervalForResource = 30
        waveRhythmLor.waitsForConnectivity = true
        
        URLSession(configuration: waveRhythmLor).dataTask(with: vocalBeaconLor) { audioMapLor, beatPulseRix, beatGuideRix in
            self.LorixFleverPrintResponse(audioMapLor: audioMapLor, beatPulseRix: beatPulseRix, beatGuideRix: beatGuideRix)
            if let rhythmicAirRix = beatGuideRix as NSError?,
               rhythmicAirRix.domain == NSURLErrorDomain,
               rhythmicAirRix.code == NSURLErrorNetworkConnectionLost,
               rhythmicWaveRix < 2 {
                let airRhythmLor = rhythmicWaveRix + 1
                print("LorixFlever retry:", airRhythmLor)
                DispatchQueue.global().asyncAfter(deadline: .now() + Double(airRhythmLor)) {
                    self.LorixFleverSend(vocalBeaconLor: vocalBeaconLor, layeredRhythmRix: layeredRhythmRix, rhythmicWaveRix: airRhythmLor, polyphonicVocalLor: polyphonicVocalLor)
                }
                return
            }
            if let beatGuideRix {
                DispatchQueue.main.async { polyphonicVocalLor(.failure(beatGuideRix)) }
                return
            }
            guard let audioMapLor else {
                DispatchQueue.main.async {
                    polyphonicVocalLor(.failure(NSError(domain: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "mMMqLqZkC/A0T0iI9d/+8olkQpWoK0jMIfMtfrScwM2CxsXEP+yT"), code: 1000)))
                }
                return
            }
            self.LorixFleverHandle(audioMapLor: audioMapLor, layeredRhythmRix: layeredRhythmRix, polyphonicVocalLor: polyphonicVocalLor)
        }.resume()
    }
    
    private func LorixFleverPrintRequest(
        soundVistaRix: URL,
        complexTextureLor: String,
        acousticDetailRix: [String: Any],
        tonalClarityRix: String,
        vocalJourneyLor: String,
        vocalBeaconLor: URLRequest
    ) {
        print("========== LorixFlever Request ==========")
        print("path:", complexTextureLor)
        print("url:", soundVistaRix.absoluteString)
        print("method:", vocalBeaconLor.httpMethod ?? "")
        print("timeout:", vocalBeaconLor.timeoutInterval)
        print("params:", acousticDetailRix)
        print("json:", tonalClarityRix)
        print("headers:", vocalBeaconLor.allHTTPHeaderFields ?? [:])
        print("encryptedBody:", vocalJourneyLor)
        print("encryptedBodyLength:", vocalJourneyLor.count)
        print("httpBodyBytes:", vocalBeaconLor.httpBody?.count ?? 0)
        print("baseURL:", LorixFleverConfig.audioRelayLor.LorixFleverBaseURL)
        print("appId:", LorixFleverConfig.audioRelayLor.LorixFleverAppID)
        print("aesKeyLength:", LorixFleverConfig.audioRelayLor.LorixFleverAESKey.count)
        print("aesIVLength:", LorixFleverConfig.audioRelayLor.LorixFleverAESIV.count)
        print("=========================================")
    }
    
    private func LorixFleverPrintResponse(audioMapLor: Data?, beatPulseRix: URLResponse?, beatGuideRix: Error?) {
        print("========== LorixFlever Response =========")
        if let soundEnvelopeLor = beatPulseRix as? HTTPURLResponse {
            print("statusCode:", soundEnvelopeLor.statusCode)
            print("responseHeaders:", soundEnvelopeLor.allHeaderFields)
            print("responseURL:", soundEnvelopeLor.url?.absoluteString ?? "")
        } else {
            print("response:", beatPulseRix as Any)
        }
        if let beatGuideRix {
            let rhythmicWaveRix = beatGuideRix as NSError
            print("errorDomain:", rhythmicWaveRix.domain)
            print("errorCode:", rhythmicWaveRix.code)
            print("errorDescription:", rhythmicWaveRix.localizedDescription)
            print("errorUserInfo:", rhythmicWaveRix.userInfo)
        }
        if let audioMapLor {
            print("rawBytes:", audioMapLor.count)
            print("rawString:", String(data: audioMapLor, encoding: .utf8) ?? "")
        } else {
            print("rawBytes:", 0)
        }
        print("=========================================")
    }
    
    private func LorixFleverHandle(
        audioMapLor: Data,
        layeredRhythmRix: Bool,
        polyphonicVocalLor: @escaping (Result<[String: Any]?, Error>) -> Void
    ) {
        do {
            guard let tonalClarityRix = try JSONSerialization.jsonObject(with: audioMapLor) as? [String: Any] else {
                throw NSError(domain: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "zOHIPGToS7MCN+01eIhR9IVkZ5W4OltS+sL5hMPBnH6ErGKBP2d7KZGbFrY="), code: 1001)
            }
            print("LorixFlever responseJSON:", tonalClarityRix)
            
            if layeredRhythmRix {
                guard let rhythmicSyncopationLor = tonalClarityRix[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Sj5bPrDMPGUVMrHhhD0yKMcmOpkk9SDpo6OZo8y8WisdIolm")] as? String,
                      rhythmicSyncopationLor == LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "bYBPMCjXQhmv+2pS4ODWHWIZVQE0qAt+ypOzADCteADEF8hA") else {
                    DispatchQueue.main.async {
                        polyphonicVocalLor(.failure(NSError(domain: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "RUiMa9RJEpge+R7B62lIO+FKSdCKRYI/ye6o1puKxo7SkRLs4yTUAhI="), code: 1001)))
                    }
                    return
                }
                DispatchQueue.main.async { polyphonicVocalLor(.success([:])) }
                return
            }
            
            guard let rhythmicSyncopationLor = tonalClarityRix[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Sj5bPrDMPGUVMrHhhD0yKMcmOpkk9SDpo6OZo8y8WisdIolm")] as? String,
                  rhythmicSyncopationLor == LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "bYBPMCjXQhmv+2pS4ODWHWIZVQE0qAt+ypOzADCteADEF8hA"),
                  let monophonicClarityRix = tonalClarityRix[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "he8P66P8gaBMS+EgVi6CSNImiE9waBnMWAlMWp7TMvIvnf8aGcc=")] as? String else {
                throw NSError(domain: tonalClarityRix[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "pVTpEE9E3lf9NcPu1sbyCOASeT8m9UAdQ8yjYqqv9vnOf/7xBdCL")] as? String ?? LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "acK48ac3QRDM1kNgd1ma+nvXxrrZRa4CB2ufw1Olb43n3qm0n+UtYZi4NEIBduk="), code: 1002)
            }
            
            guard let soundExpeditionRix = LorixFleverAES(),
                  let stereophonicWidthLor = soundExpeditionRix.LorixFleverDecrypt(hex: monophonicClarityRix),
                  let immersiveAudioRix = stereophonicWidthLor.data(using: .utf8),
                  let vocalSynthesizerRix = try JSONSerialization.jsonObject(with: immersiveAudioRix) as? [String: Any] else {
                throw NSError(domain: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "cGss71KQKMcbkisBeqDuKsgogyWWxkbcLeMJgvUY54U0zvbcsR7lWsXDPXUasfMD"), code: 1003)
            }
            
            DispatchQueue.main.async {
                polyphonicVocalLor(.success(vocalSynthesizerRix))
            }
        } catch let acousticSignalRix {
            DispatchQueue.main.async {
                polyphonicVocalLor(.failure(acousticSignalRix))
            }
        }
    }
    
    static func LorixFleverJSONString(from sonicDepthLor: [String: Any]) -> String? {
        guard let audioMapLor = try? JSONSerialization.data(withJSONObject: sonicDepthLor) else { return nil }
        return String(data: audioMapLor, encoding: .utf8)
    }
}

private extension Bundle {
    var LorixFleverAppVersion: String {
        object(forInfoDictionaryKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "zondhP+rmAT7gCDlyrju/eJgxYxyRnQtzIfZ6AE81uhGKXA/K7Xw9KIP1MfZ+TE2HvwTAIr3KWL4Gw==")) as? String ?? ""
    }
}
