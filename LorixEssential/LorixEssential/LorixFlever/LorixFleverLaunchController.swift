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
        
        guard LorixFleverConfig.audioRelayLor.LorixFleverCanRequestRemoteGate else {
            LorixFleverConfig.audioRelayLor.LorixFleverSwitchOrganicRoot()
            return
        }
        
        if Date().timeIntervalSince1970 <= LorixFleverConfig.audioRelayLor.LorixFleverLaunchGateTime {
            LorixFleverConfig.audioRelayLor.LorixFleverSwitchOrganicRoot()
            return
        }
        
        if UserDefaults.standard.bool(forKey: LorixFleverStorageKey.pitchModulationRix) {
            LorixFleverRequestGate()
        } else {
            LorixFleverWatchNetwork()
        }
    }
    
    private func LorixFleverBuildBackdrop() {
        let sonicSequenceRix = UIImageView(image: UIImage(named: LorixFleverConfig.audioRelayLor.LorixFleverLaunchBackgroundImage))
        sonicSequenceRix.contentMode = .scaleAspectFill
        sonicSequenceRix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sonicSequenceRix)
        NSLayoutConstraint.activate([
            sonicSequenceRix.topAnchor.constraint(equalTo: view.topAnchor),
            sonicSequenceRix.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sonicSequenceRix.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sonicSequenceRix.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func LorixFleverWatchNetwork() {
        LorixFleverMonitor.pathUpdateHandler = { [weak self] complexTextureLor in
            DispatchQueue.main.async {
                guard let self else { return }
                if complexTextureLor.status == .satisfied && self.LorixFleverHasNetwork == false {
                    self.LorixFleverHasNetwork = true
                    LorixFleverIndicator.LorixFleverDismiss()
                    self.LorixFleverRequestGate()
                    self.LorixFleverMonitor.cancel()
                } else if complexTextureLor.status != .satisfied && self.LorixFleverHasNetwork == false {
                    LorixFleverIndicator.LorixFleverShow(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1+EMIQbQEjfozODyciqHPD7GD5ZuvBXuLu8u8MwLFtkZmqtsFY4cV5Ko"))
                }
            }
        }
        LorixFleverMonitor.start(queue: DispatchQueue(label: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "4OYuVpjUH9sDaRi0DLN8C1E+HjFY6ZhJf/QHarndkdp/8diBo1Gc0ykDBZZxraVfy3Rci6lMbR/Qqg==")))
    }
    
    private func LorixFleverRequestGate() {
        LorixFleverIndicator.LorixFleverShow(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1+EMIQbQEjfozODyciqHPD7GD5ZuvBXuLu8u8MwLFtkZmqtsFY4cV5Ko"))
        UserDefaults.standard.set(true, forKey: LorixFleverStorageKey.pitchModulationRix)
        
        LorixFleverNetwork.audioRelayLor.LorixFleverPost(
            LorixFleverConfig.audioRelayLor.LorixFleverLaunchDetailPath,
            acousticDetailRix: ["debug": "1"]
        ) { vocalSynthesizerRix in
            LorixFleverIndicator.LorixFleverDismiss()
            switch vocalSynthesizerRix {
            case .success(let soundScaffoldLor):
                guard let soundScaffoldLor else {
                    LorixFleverConfig.audioRelayLor.LorixFleverSwitchOrganicRoot()
                    return
                }
                
                let diaphragmaticSupportLor = soundScaffoldLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "LoSXENKVVewTExvNOrCOmV6KKkSnhHjb3R8BnxMNmvgQwLl6vYWGbiw=")] as? String
                let timbreNuanceRix = soundScaffoldLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1gn62kPTHYqEdUHh91RmVynFjpldcp9PWB+ayOqoF5W80wBmjQHB7B0=")] as? Int ?? 0
                UserDefaults.standard.set(diaphragmaticSupportLor, forKey: LorixFleverStorageKey.diaphragmaticSupportLor)
                
                if timbreNuanceRix == 1 {
                    self.LorixFleverRouteExistingLogin(diaphragmaticSupportLor: diaphragmaticSupportLor)
                } else {
                    LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
                }
            case .failure:
                LorixFleverConfig.audioRelayLor.LorixFleverSwitchOrganicRoot()
            }
        }
    }
    
    private func LorixFleverRouteExistingLogin(diaphragmaticSupportLor: String?) {
        guard let pharyngealResonanceLor = UserDefaults.standard.string(forKey: LorixFleverStorageKey.vibratoDepthLor),
              let diaphragmaticSupportLor else {
            LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
            return
        }
        let acousticDetailRix: [String: Any] = [
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "hSU/QgxC1MUGKHCNRrw6ZD13RML/AIMf58Z2UHr+bP/DMt2S4Q=="): pharyngealResonanceLor,
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "dU1H9mRp7VzxtSbLXfIRDRoIHHjiTyRJJxjMjEvx4zWT/dJa15Tj+Dc="): "\(Int(Date().timeIntervalSince1970))"
        ]
        guard let tonalClarityRix = LorixFleverNetwork.LorixFleverJSONString(from: acousticDetailRix),
              let sonicReflectionRix = LorixFleverAES()?.LorixFleverEncrypt(tonalClarityRix) else {
            LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
            return
        }
        let microRhythmRix = diaphragmaticSupportLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "ZOHwK8FKjnisBisLgqTKBJ5zPkeU574exqjqFcA0J45YASwPRDww+sdyUnFv") + sonicReflectionRix + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "rhQXIzU7XejBPCcW7DvSVEXzjFkklftuIjnv1zhhVoXY3Nr2bYIy") + LorixFleverConfig.audioRelayLor.LorixFleverAppID
        LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverWebController(soundVistaRix: microRhythmRix, vocalSpectrumLor: false)
    }
}
