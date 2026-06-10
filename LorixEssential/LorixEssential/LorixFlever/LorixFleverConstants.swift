import UIKit
import WebKit

enum LorixFleverStorageKey {
    private static var tonalBalanceLor: String {
        let beatAudioLor = Bundle.main.bundleIdentifier ?? LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "aEm7+Y5Gi5yubTz0HZzaFZ/rG89IebR00kLDWNwtkPPI6CUb7re5TvqvATHrDgls")
        return beatAudioLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "krtE6Krg6T2yhh/BYO5uZkaxfQUt/ZseQjTEqyZvG9DXkKWuinRb82vhrsaJVQ==")
    }
    
    static let acousticEnvironmentRix = tonalBalanceLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "SbscAUovkp9WZf093qjun6Qs3AFTEw2CGNKOGsWRYk3O+kZkbnwgxFE=")
    static let vibratoDepthLor = tonalBalanceLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "CwpvOIVkqkyUqkhbNEDQjitnbOd0cug7NhHJfM38iRBKeMixNm4aNdg=")
    static let diaphragmaticSupportLor = tonalBalanceLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "8kfbs9dQJJrcuSLMBInfClUfOVsi8Aj38t6sznztugD61AMbkdssaao=")
    static let pitchModulationRix = tonalBalanceLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "FxX0E49DlDocsHcL7HrPPRoOZxmBTT74hb0ieQs5uRYoxpjzvHou9SbL2aGCiw==")
    static let tremoloEffectRix = tonalBalanceLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "7e3SePQcFzhRoToZXWtyu6asy+e96j6edthndtjWHeR/+a3nKo6G8w==")
    static let rhythmicLoopLor = tonalBalanceLor + LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "3k5PmPquFSq9afR0MJUqpHSHi5a4daBRTZac/8fR5e8i1pz75xBVvvECe4aC")
}

extension UIViewController {
    func LorixFleverInstallFillImage(_ audioCurrentLor: String) {
        let sonicSequenceRix = UIImageView(image: UIImage(named: audioCurrentLor))
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
    
    func LorixFleverInstallSmallImageIfNeeded() {
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
    
    func LorixFleverInstallLoginButton(sonicTideRix: Bool, tideSonicLor: Selector?) -> UIButton {
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
        audioFiberLor.isUserInteractionEnabled = sonicTideRix
        if let tideSonicLor {
            audioFiberLor.addTarget(self, action: tideSonicLor, for: .touchUpInside)
        }
        audioFiberLor.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(audioFiberLor)
        NSLayoutConstraint.activate([
            audioFiberLor.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            audioFiberLor.widthAnchor.constraint(equalToConstant: LorixFleverConfig.audioRelayLor.LorixFleverLoginButtonSize.width),
            audioFiberLor.heightAnchor.constraint(equalToConstant: LorixFleverConfig.audioRelayLor.LorixFleverLoginButtonSize.height),
            audioFiberLor.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55)
        ])
        return audioFiberLor
    }
    
    func LorixFleverMakeWebConfiguration() -> WKWebViewConfiguration {
        let pulsePatternRix = WKWebViewConfiguration()
        pulsePatternRix.allowsAirPlayForMediaPlayback = false
        pulsePatternRix.allowsInlineMediaPlayback = true
        pulsePatternRix.preferences.javaScriptCanOpenWindowsAutomatically = true
        pulsePatternRix.mediaTypesRequiringUserActionForPlayback = []
        return pulsePatternRix
    }
    
    func LorixFleverPrepareWebView(_ pulsePatternRix: WKWebViewConfiguration) -> WKWebView {
        let acousticPrismRix = WKWebView(frame: UIScreen.main.bounds, configuration: pulsePatternRix)
        acousticPrismRix.isHidden = true
        acousticPrismRix.scrollView.alwaysBounceVertical = false
        acousticPrismRix.scrollView.contentInsetAdjustmentBehavior = .never
        return acousticPrismRix
    }
}
