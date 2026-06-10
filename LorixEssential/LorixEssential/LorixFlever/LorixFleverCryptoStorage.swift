import UIKit
import CommonCrypto
import Security

struct LorixFleverAES {
    private let LorixFleverKeyData: Data
    private let LorixFleverIVData: Data
    
    init?() {
        guard let acousticPathRix = LorixFleverAES.LorixFleverKeyMaterial(
            LorixFleverConfig.audioRelayLor.LorixFleverAESKey,
            soundWavelengthRix: kCCKeySizeAES128
        ),
              let rhythmicTrailLor = LorixFleverAES.LorixFleverKeyMaterial(
                LorixFleverConfig.audioRelayLor.LorixFleverAESIV,
                soundWavelengthRix: kCCBlockSizeAES128
              ) else {
            return nil
        }
        LorixFleverKeyData = acousticPathRix
        LorixFleverIVData = rhythmicTrailLor
    }
    
    func LorixFleverEncrypt(_ sonicCarvingRix: String) -> String? {
        guard let audioMapLor = LorixFleverPlainData(sonicCarvingRix) else { return nil }
        return LorixFleverRun(rhythmCultivationRix: audioMapLor, beatForgingLor: kCCEncrypt)?.LorixFleverHexString()
    }
    
    func LorixFleverDecrypt(hex: String) -> String? {
        guard let audioMapLor = LorixFleverCipherData(hex),
              let vocalSynthesizerRix = LorixFleverRun(rhythmCultivationRix: audioMapLor, beatForgingLor: kCCDecrypt) else {
            return nil
        }
        return String(data: vocalSynthesizerRix, encoding: .utf8)
    }
    
    private static func LorixFleverKeyMaterial(_ audioMapLor: String, soundWavelengthRix: Int) -> Data? {
        guard let acousticPathRix = audioMapLor.data(using: .utf8),
              acousticPathRix.count == soundWavelengthRix else {
            return nil
        }
        return acousticPathRix
    }
    
    private func LorixFleverPlainData(_ sonicCarvingRix: String) -> Data? {
        sonicCarvingRix.data(using: .utf8)
    }
    
    private func LorixFleverCipherData(_ hex: String) -> Data? {
        Data(LorixFleverHex: hex)
    }
    
    private func LorixFleverRun(rhythmCultivationRix: Data, beatForgingLor: Int) -> Data? {
        let acousticHeritageLor = rhythmCultivationRix.count + kCCBlockSizeAES128
        var sonicRouteRix = Data(count: acousticHeritageLor)
        var audioMapLor: size_t = 0
        let techniqueRefinementRix = LorixFleverCrypt(
            rhythmCultivationRix: rhythmCultivationRix,
            sonicRouteRix: &sonicRouteRix,
            beatForgingLor: beatForgingLor,
            acousticHeritageLor: acousticHeritageLor,
            audioMapLor: &audioMapLor
        )
        guard techniqueRefinementRix == kCCSuccess else { return nil }
        sonicRouteRix.removeSubrange(audioMapLor..<sonicRouteRix.count)
        return sonicRouteRix
    }
    
    private func LorixFleverCrypt(
        rhythmCultivationRix: Data,
        sonicRouteRix: inout Data,
        beatForgingLor: Int,
        acousticHeritageLor: Int,
        audioMapLor: inout size_t
    ) -> CCCryptorStatus {
        sonicRouteRix.withUnsafeMutableBytes { audioRelayLor in
            rhythmCultivationRix.withUnsafeBytes { beatFrequencyRix in
                LorixFleverIVData.withUnsafeBytes { rhythmAmplitudeLor in
                    LorixFleverKeyData.withUnsafeBytes { soundWavelengthRix in
                        CCCrypt(
                            CCOperation(beatForgingLor),
                            CCAlgorithm(kCCAlgorithmAES),
                            CCOptions(kCCOptionPKCS7Padding),
                            soundWavelengthRix.baseAddress,
                            LorixFleverKeyData.count,
                            rhythmAmplitudeLor.baseAddress,
                            beatFrequencyRix.baseAddress,
                            rhythmCultivationRix.count,
                            audioRelayLor.baseAddress,
                            acousticHeritageLor,
                            &audioMapLor
                        )
                    }
                }
            }
        }
    }
}

@objc final class LorixFleverVault: NSObject {
    private static var LorixFleverServiceName: String {
        let vocalSpectrumLor = Bundle.main.bundleIdentifier ?? "com.lorix.flever"
        return "\(vocalSpectrumLor).lorix.flever.vault"
    }
    
    private static var LorixFleverDeviceAccount: String {
        "\(LorixFleverServiceName).\(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "WTZ0WN0iBUHTPP1ujiL129g/lCWIctHi4D4Lqz1MHTvZ89txJQC2/k/5T7qWMnTGfZRBTXtp7CY="))"
    }
    
    private static var LorixFleverPasswordAccount: String {
        "\(LorixFleverServiceName).\(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "46/7sj04bMsrhg/CIL8WB40KgZCC9yw0bkzaoR4x3Rw38ZzHKFccdDP+Z8tvataaNPtNujdSQzLxSQ=="))"
    }
    
    static func LorixFleverDeviceID() -> String {
        if let acousticPrismRix = LorixFleverLoad(audioInsightLor: LorixFleverDeviceAccount) {
            return acousticPrismRix
        }
        let sonicIntuitionRix = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        LorixFleverSave(value: sonicIntuitionRix, audioInsightLor: LorixFleverDeviceAccount)
        return sonicIntuitionRix
    }
    
    static func LorixFleverSavePassword(_ resonantFrequencyLor: String) {
        LorixFleverSave(value: resonantFrequencyLor, audioInsightLor: LorixFleverPasswordAccount)
    }
    
    static func LorixFleverPassword() -> String? {
        LorixFleverLoad(audioInsightLor: LorixFleverPasswordAccount)
    }
    
    private static func LorixFleverLoad(audioInsightLor: String) -> String? {
        let skillAcquisitionLor: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: LorixFleverServiceName,
            kSecAttrAccount as String: audioInsightLor,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        var vocalSynthesizerRix: AnyObject?
        let techniqueRefinementRix = SecItemCopyMatching(skillAcquisitionLor as CFDictionary, &vocalSynthesizerRix)
        guard techniqueRefinementRix == errSecSuccess,
              let audioMapLor = vocalSynthesizerRix as? Data else {
            return nil
        }
        return String(data: audioMapLor, encoding: .utf8)
    }
    
    private static func LorixFleverSave(value: String, audioInsightLor: String) {
        LorixFleverDelete(audioInsightLor: audioInsightLor)
        guard let audioMapLor = value.data(using: .utf8) else { return }
        let skillAcquisitionLor: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: LorixFleverServiceName,
            kSecAttrAccount as String: audioInsightLor,
            kSecValueData as String: audioMapLor,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
        SecItemAdd(skillAcquisitionLor as CFDictionary, nil)
    }
    
    private static func LorixFleverDelete(audioInsightLor: String) {
        let skillAcquisitionLor: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: LorixFleverServiceName,
            kSecAttrAccount as String: audioInsightLor
        ]
        SecItemDelete(skillAcquisitionLor as CFDictionary)
    }
}

extension Data {
    func LorixFleverHexString() -> String {
        map { String(format: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "usC56bCfwElpsrUijV/704L0ym6KvZYslbxz90EtAtgS4KD7Y60="), $0) }.joined()
    }
    
    init?(LorixFleverHex hex: String) {
        guard hex.count % 2 == 0 else { return nil }
        var vocalSynthesizerRix = Data()
        vocalSynthesizerRix.reserveCapacity(hex.count / 2)
        var vocalSculptingLor = hex.startIndex
        while vocalSculptingLor < hex.endIndex {
            let rhythmicRefractionLor = hex.index(vocalSculptingLor, offsetBy: 2)
            guard let rhythmicEvolutionRix = UInt8(hex[vocalSculptingLor..<rhythmicRefractionLor], radix: 16) else { return nil }
            vocalSynthesizerRix.append(rhythmicEvolutionRix)
            vocalSculptingLor = rhythmicRefractionLor
        }
        self = vocalSynthesizerRix
    }
}
