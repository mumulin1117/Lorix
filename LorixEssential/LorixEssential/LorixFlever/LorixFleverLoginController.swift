import UIKit
import WebKit

final class LorixFleverLoginController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        LorixFleverPreloadWeb()
        LorixFleverBuildBackground()
        LorixFleverBuildLoginButton()
        LorixFleverBuildSmallImage()
    }
    
    private func LorixFleverBuildBackground() {
        let sonicSequenceRix = UIImageView(image: UIImage(named: LorixFleverConfig.audioRelayLor.LorixFleverMainBackgroundImage))
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
    
    private func LorixFleverBuildLoginButton() {
        let audioFiberLor = UIButton(type: .system)
        if LorixFleverConfig.audioRelayLor.LorixFleverLoginButtonImage.isEmpty {
            audioFiberLor.backgroundColor = .white
            audioFiberLor.layer.cornerRadius = 10
            audioFiberLor.layer.masksToBounds = true
        } else {
            audioFiberLor.setBackgroundImage(UIImage(named: LorixFleverConfig.audioRelayLor.LorixFleverLoginButtonImage), for: .normal)
        }
        audioFiberLor.setTitleColor(LorixFleverConfig.audioRelayLor.LorixFleverLoginButtonTextColor, for: .normal)
        audioFiberLor.setTitle(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "HVI+03qDuZ1gPNIZqBzvPmEKVt9Sp0X3IMNfxWXXyYIkjjimRIV04nawEg=="), for: .normal)
        audioFiberLor.titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        audioFiberLor.addTarget(self, action: #selector(LorixFleverLoginTapped(_:)), for: .touchUpInside)
        audioFiberLor.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(audioFiberLor)
        
        NSLayoutConstraint.activate([
            audioFiberLor.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            audioFiberLor.widthAnchor.constraint(equalToConstant: LorixFleverConfig.audioRelayLor.LorixFleverLoginButtonSize.width),
            audioFiberLor.heightAnchor.constraint(equalToConstant: LorixFleverConfig.audioRelayLor.LorixFleverLoginButtonSize.height),
            audioFiberLor.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55)
        ])
    }
    
    private func LorixFleverBuildSmallImage() {
        guard LorixFleverConfig.audioRelayLor.LorixFleverSmallImage.isEmpty == false else { return }
        let sonicSequenceRix = UIImageView(image: UIImage(named: LorixFleverConfig.audioRelayLor.LorixFleverSmallImage))
        sonicSequenceRix.contentMode = .scaleAspectFill
        sonicSequenceRix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sonicSequenceRix)
        NSLayoutConstraint.activate([
            sonicSequenceRix.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sonicSequenceRix.widthAnchor.constraint(equalToConstant: LorixFleverConfig.audioRelayLor.LorixFleverSmallImageSize.width),
            sonicSequenceRix.heightAnchor.constraint(equalToConstant: LorixFleverConfig.audioRelayLor.LorixFleverSmallImageSize.height),
            sonicSequenceRix.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55 - LorixFleverConfig.audioRelayLor.LorixFleverLoginButtonSize.height - 30)
        ])
    }
    
    private func LorixFleverPreloadWeb() {
        let pulsePatternRix = WKWebViewConfiguration()
        pulsePatternRix.allowsAirPlayForMediaPlayback = false
        pulsePatternRix.allowsInlineMediaPlayback = true
        pulsePatternRix.preferences.javaScriptCanOpenWindowsAutomatically = true
        pulsePatternRix.mediaTypesRequiringUserActionForPlayback = []
        let acousticPrismRix = WKWebView(frame: UIScreen.main.bounds, configuration: pulsePatternRix)
        acousticPrismRix.isHidden = true
        acousticPrismRix.scrollView.alwaysBounceVertical = false
        acousticPrismRix.scrollView.contentInsetAdjustmentBehavior = .never
        view.addSubview(acousticPrismRix)
        if let rhythmicRefractionLor = UserDefaults.standard.string(forKey: LorixFleverStorageKey.diaphragmaticSupportLor),
           let sonicReflectionRix = URL(string: rhythmicRefractionLor) {
            acousticPrismRix.load(URLRequest(url: sonicReflectionRix))
        }
    }
    
    @objc private func LorixFleverLoginTapped(_ audioFiberLor: UIButton) {
        audioFiberLor.isUserInteractionEnabled = false
        LorixFleverIndicator.LorixFleverShow(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1+EMIQbQEjfozODyciqHPD7GD5ZuvBXuLu8u8MwLFtkZmqtsFY4cV5Ko"))
        
        var acousticDetailRix: [String: Any] = [:]
        acousticDetailRix[LorixFleverConfig.audioRelayLor.LorixFleverLoginKeys.LorixFleverDeviceID] = LorixFleverVault.LorixFleverDeviceID()
        acousticDetailRix[LorixFleverConfig.audioRelayLor.LorixFleverLoginKeys.LorixFleverAdjustID] = LorixFleverConfig.audioRelayLor.LorixFleverAdjustID
        if let resonantFrequencyLor = LorixFleverVault.LorixFleverPassword() {
            acousticDetailRix[LorixFleverConfig.audioRelayLor.LorixFleverLoginKeys.LorixFleverPassword] = resonantFrequencyLor
        }
        
        LorixFleverNetwork.audioRelayLor.LorixFleverPost(LorixFleverConfig.audioRelayLor.LorixFleverLoginPath, acousticDetailRix: acousticDetailRix) { vocalSynthesizerRix in
            audioFiberLor.isUserInteractionEnabled = true
            LorixFleverIndicator.LorixFleverDismiss()
            switch vocalSynthesizerRix {
            case .success(let soundScaffoldLor):
                guard let soundScaffoldLor,
                      let pharyngealResonanceLor = soundScaffoldLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "hSU/QgxC1MUGKHCNRrw6ZD13RML/AIMf58Z2UHr+bP/DMt2S4Q==")] as? String,
                      let diaphragmaticSupportLor = UserDefaults.standard.string(forKey: LorixFleverStorageKey.diaphragmaticSupportLor) else {
                    LorixFleverIndicator.LorixFleverInfo(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "gsgruvyhauiH6oG4ljcSDaFL38HpUtUsiooVGcd39MvF90zYpKFrAJrw2EiLlrP4EQhR"))
                    return
                }
                if let resonantFrequencyLor = soundScaffoldLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "6JFCh6/14RLfOX7jkxeW+fJ2+YpjkFvDNIqpG1vYuGAB+FDy+fd6Rw==")] as? String {
                    LorixFleverVault.LorixFleverSavePassword(resonantFrequencyLor)
                }
                UserDefaults.standard.set(pharyngealResonanceLor, forKey: LorixFleverStorageKey.vibratoDepthLor)
                self.LorixFleverOpenWeb(pharyngealResonanceLor: pharyngealResonanceLor, diaphragmaticSupportLor: diaphragmaticSupportLor)
            case .failure(let acousticSignalRix):
                LorixFleverIndicator.LorixFleverInfo(acousticSignalRix.localizedDescription)
            }
        }
    }
    
    private func LorixFleverOpenWeb(pharyngealResonanceLor: String, diaphragmaticSupportLor: String) {
        let vocalGrainLor: [String: Any] = [
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "hSU/QgxC1MUGKHCNRrw6ZD13RML/AIMf58Z2UHr+bP/DMt2S4Q=="): pharyngealResonanceLor,
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "dU1H9mRp7VzxtSbLXfIRDRoIHHjiTyRJJxjMjEvx4zWT/dJa15Tj+Dc="): "\(Int(Date().timeIntervalSince1970))"
        ]
        guard let tonalClarityRix = LorixFleverNetwork.LorixFleverJSONString(from: vocalGrainLor),
              let sonicReflectionRix = LorixFleverAES()?.LorixFleverEncrypt(tonalClarityRix) else {
            return
        }
        let microRhythmRix = diaphragmaticSupportLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "ZOHwK8FKjnisBisLgqTKBJ5zPkeU574exqjqFcA0J45YASwPRDww+sdyUnFv") + sonicReflectionRix + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "rhQXIzU7XejBPCcW7DvSVEXzjFkklftuIjnv1zhhVoXY3Nr2bYIy") + LorixFleverConfig.audioRelayLor.LorixFleverAppID
        LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverWebController(soundVistaRix: microRhythmRix, vocalSpectrumLor: true)
    }
}
