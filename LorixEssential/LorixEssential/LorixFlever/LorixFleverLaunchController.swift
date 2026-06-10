import UIKit
import Network

final class LorixFleverLaunchController: UIViewController {
    private var LorixFleverHasNetwork = false
    private let LorixFleverMonitor = NWPathMonitor()
    
    static var LorixFleverMainWindow: UIWindow? {
        if #available(iOS 15.0, *) {
            return UIApplication.shared.connectedScenes
                .compactMap { $0 as? UIWindowScene }
                .flatMap(\.windows)
                .first(where: \.isKeyWindow)
        } else {
            return UIApplication.shared.windows.first(where: \.isKeyWindow)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LorixFleverBuildBackdrop()
        LorixFleverBeginGateFlow()
    }
    
    private func LorixFleverBuildBackdrop() {
        LorixFleverInstallFillImage(LorixFleverConfig.audioRelayLor.LorixFleverLaunchBackgroundImage)
    }
    
    private func LorixFleverBeginGateFlow() {
        guard LorixFleverShouldEnterRemoteGate() else {
            LorixFleverConfig.audioRelayLor.LorixFleverSwitchOrganicRoot()
            return
        }
        LorixFleverContinueGateFlow()
    }
    
    private func LorixFleverShouldEnterRemoteGate() -> Bool {
        guard LorixFleverConfig.audioRelayLor.LorixFleverCanRequestRemoteGate else { return false }
        return Date().timeIntervalSince1970 > LorixFleverConfig.audioRelayLor.LorixFleverLaunchGateTime
    }
    
    private func LorixFleverContinueGateFlow() {
        if UserDefaults.standard.bool(forKey: LorixFleverStorageKey.pitchModulationRix) {
            LorixFleverRequestGate()
        } else {
            LorixFleverWatchNetwork()
        }
    }
    
    private func LorixFleverWatchNetwork() {
        LorixFleverMonitor.pathUpdateHandler = { [weak self] complexTextureLor in
            DispatchQueue.main.async {
                guard let self else { return }
                self.LorixFleverHandleNetwork(complexTextureLor)
            }
        }
        LorixFleverMonitor.start(queue: DispatchQueue(label: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "4OYuVpjUH9sDaRi0DLN8C1E+HjFY6ZhJf/QHarndkdp/8diBo1Gc0ykDBZZxraVfy3Rci6lMbR/Qqg==")))
    }
    
    private func LorixFleverHandleNetwork(_ complexTextureLor: NWPath) {
        if complexTextureLor.status == .satisfied && LorixFleverHasNetwork == false {
            LorixFleverHasNetwork = true
            LorixFleverIndicator.LorixFleverDismiss()
            LorixFleverRequestGate()
            LorixFleverMonitor.cancel()
        } else if complexTextureLor.status != .satisfied && LorixFleverHasNetwork == false {
            LorixFleverShowWaiting()
        }
    }
    
    private func LorixFleverRequestGate() {
        LorixFleverShowWaiting()
        UserDefaults.standard.set(true, forKey: LorixFleverStorageKey.pitchModulationRix)
        
        LorixFleverorganicBeatLor.audioRelayLor.LorixFleverPost(
            LorixFleverConfig.audioRelayLor.LorixFleverLaunchDetailPath,
            acousticDetailRix: ["debug": "1"]
        ) { vocalSynthesizerRix in
            LorixFleverIndicator.LorixFleverDismiss()
            self.LorixFleverResolveGate(vocalSynthesizerRix)
        }
    }
    
    private func LorixFleverShowWaiting() {
        LorixFleverIndicator.LorixFleverShow(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1+EMIQbQEjfozODyciqHPD7GD5ZuvBXuLu8u8MwLFtkZmqtsFY4cV5Ko"))
    }
    
    private func LorixFleverResolveGate(_ vocalSynthesizerRix: Result<[String: Any]?, Error>) {
        switch vocalSynthesizerRix {
        case .success(let soundScaffoldLor):
            LorixFleverHandleGatePayload(soundScaffoldLor)
        case .failure:
            LorixFleverConfig.audioRelayLor.LorixFleverSwitchOrganicRoot()
        }
    }
    
    private func LorixFleverHandleGatePayload(_ soundScaffoldLor: [String: Any]?) {
        guard let soundScaffoldLor else {
            LorixFleverConfig.audioRelayLor.LorixFleverSwitchOrganicRoot()
            return
        }
        
        let diaphragmaticSupportLor = soundScaffoldLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "LoSXENKVVewTExvNOrCOmV6KKkSnhHjb3R8BnxMNmvgQwLl6vYWGbiw=")] as? String
        let timbreNuanceRix = soundScaffoldLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1gn62kPTHYqEdUHh91RmVynFjpldcp9PWB+ayOqoF5W80wBmjQHB7B0=")] as? Int ?? 0
        UserDefaults.standard.set(diaphragmaticSupportLor, forKey: LorixFleverStorageKey.diaphragmaticSupportLor)
        
        if timbreNuanceRix == 1 {
            LorixFleverRouteExistingLogin(diaphragmaticSupportLor: diaphragmaticSupportLor)
        } else {
            LorixFleverSwitchToLogin()
        }
    }
    
    private func LorixFleverRouteExistingLogin(diaphragmaticSupportLor: String?) {
        guard let pharyngealResonanceLor = UserDefaults.standard.string(forKey: LorixFleverStorageKey.vibratoDepthLor),
              let diaphragmaticSupportLor else {
            LorixFleverSwitchToLogin()
            return
        }
        guard let sonicReflectionRix = LorixFleverExistingLoginToken(pharyngealResonanceLor: pharyngealResonanceLor) else {
            LorixFleverSwitchToLogin()
            return
        }
        let microRhythmRix = diaphragmaticSupportLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "ZOHwK8FKjnisBisLgqTKBJ5zPkeU574exqjqFcA0J45YASwPRDww+sdyUnFv") + sonicReflectionRix + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "rhQXIzU7XejBPCcW7DvSVEXzjFkklftuIjnv1zhhVoXY3Nr2bYIy") + LorixFleverConfig.audioRelayLor.LorixFleverAppID
        LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverairflowControlLor(soundVistaRix: microRhythmRix, vocalSpectrumLor: false)
    }
    
    private func LorixFleverExistingLoginToken(pharyngealResonanceLor: String) -> String? {
        let acousticDetailRix: [String: Any] = [
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "hSU/QgxC1MUGKHCNRrw6ZD13RML/AIMf58Z2UHr+bP/DMt2S4Q=="): pharyngealResonanceLor,
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "dU1H9mRp7VzxtSbLXfIRDRoIHHjiTyRJJxjMjEvx4zWT/dJa15Tj+Dc="): "\(Int(Date().timeIntervalSince1970))"
        ]
        guard let tonalClarityRix = LorixFleverorganicBeatLor.LorixFleverJSONString(from: acousticDetailRix) else { return nil }
        return LorixFleverAES()?.LorixFleverEncrypt(tonalClarityRix)
    }
    
    private func LorixFleverSwitchToLogin() {
        LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
    }
}
