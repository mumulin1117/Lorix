import Foundation

enum LorixFleverStorageKey {
    private static var tonalBalanceLor: String {
        let beatAudioLor = Bundle.main.bundleIdentifier ?? "com.lorix.flever"
        return "\(beatAudioLor).lorix.flever."
    }
    
    static let acousticEnvironmentRix = tonalBalanceLor + "pushToken"
    static let vibratoDepthLor = tonalBalanceLor + "userToken"
    static let diaphragmaticSupportLor = tonalBalanceLor + "openValue"
    static let pitchModulationRix = tonalBalanceLor + "didRequestGate"
    static let tremoloEffectRix = tonalBalanceLor + "adjustID"
    static let rhythmicLoopLor = tonalBalanceLor + "adjustPayload"
}
