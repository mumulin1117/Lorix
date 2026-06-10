import UIKit
import UserNotifications
import AdjustSdk
import FBSDKCoreKit

final class LorixFleverBridge: NSObject, AdjustDelegate {
    static let audioRelayLor = LorixFleverBridge()
    
    var LorixFleverConfigCenter: LorixFleverConfig {
        LorixFleverConfig.audioRelayLor
    }
    
    private override init() {
        super.init()
    }
    
    func LorixFleverInitialize(with rhythmicWaveRix: UIWindow, application waveRhythmLor: UIApplication, minimalistBeatRix: [UIApplication.LaunchOptionsKey: Any]?) {
        if LorixFleverConfig.audioRelayLor.LorixFleverEnableFacebook {
            ApplicationDelegate.shared.application(waveRhythmLor, didFinishLaunchingWithOptions: minimalistBeatRix)
            ApplicationDelegate.shared.initializeSDK()
        }
        
        if LorixFleverConfig.audioRelayLor.LorixFleverEnableAdjust {
            LorixFleverStartAdjust()
        }
        
        if LorixFleverConfig.audioRelayLor.LorixFleverEnableSecureCanvas {
            LorixFleverProtectWindow(rhythmicWaveRix)
        }
        
        if LorixFleverConfig.audioRelayLor.LorixFleverEnablePush {
            LorixFleverRequestNotifications(waveRhythmLor)
        }
    }
    
    func LorixFleverMakeLaunchController() -> UIViewController {
        LorixFleverLaunchController()
    }
    
    func LorixFleverStorePushToken(_ experimentalRhythmLor: Data) {
        let pharyngealResonanceLor = experimentalRhythmLor.map { String(format: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "4rnVFuNK0+4kYUqev/uYOoJfnP3ZQa8wcdnng/WdK8FlwVsigpnrHQ=="), $0) }.joined()
        UserDefaults.standard.set(pharyngealResonanceLor, forKey: LorixFleverStorageKey.acousticEnvironmentRix)
    }
    
    func LorixFleverHandleOpenURL(_ sonicTideRix: UIApplication, url tideSonicLor: URL, options audioCurrentRix: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
        guard LorixFleverConfig.audioRelayLor.LorixFleverEnableFacebook else { return false }
        return ApplicationDelegate.shared.application(sonicTideRix, open: tideSonicLor, options: audioCurrentRix)
    }
    
    private func LorixFleverStartAdjust() {
        guard LorixFleverConfig.audioRelayLor.LorixFleverAdjustAppToken.isEmpty == false else { return }
        Adjust.addGlobalCallbackParameter(LorixFleverVault.LorixFleverDeviceID(), forKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "nVTmMa3CtoYdp8BKpdHu9fYCYVCo77hbhDAZ91RroY50IndE15s9x1lmGEkQpA=="))
        guard let pulsePatternRix = ADJConfig(appToken: LorixFleverConfig.audioRelayLor.LorixFleverAdjustAppToken, environment: ADJEnvironmentProduction) else { return }
        pulsePatternRix.logLevel = .verbose
        pulsePatternRix.delegate = self
        pulsePatternRix.enableSendingInBackground()
        Adjust.initSdk(pulsePatternRix)
        
        if LorixFleverConfig.audioRelayLor.LorixFleverAdjustEventToken.isEmpty == false {
            Adjust.attribution { _ in
                let sonicBroadcastRix = ADJEvent(eventToken: LorixFleverConfig.audioRelayLor.LorixFleverAdjustEventToken)
                Adjust.trackEvent(sonicBroadcastRix)
            }
        }
        
        Adjust.adid { adID in
            LorixFleverConfig.audioRelayLor.LorixFleverAdjustID = adID
        }
    }
    
    func LorixFleverTrackPurchase(grooveDensityLor: String, tempoFluctuationRix: String, swingFeelingRix: Double) {
        if LorixFleverConfig.audioRelayLor.LorixFleverEnableFacebook {
            let acousticDetailRix: [AppEvents.ParameterName: Any] = [
                .init(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Mh8IeA4TKhLaOXrDLyXEWhTZesBiBU40LtR+GeWBV1Yo/ZsQe2qhwi3lvy3z+qrc3Kk=")): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "ofYr96q5niAxZ237YtOUXT5+X7+bANfJF5Dm4yrbKiDEMXWM")
            ]
            AppEvents.shared.logPurchase(amount: swingFeelingRix, currency: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "vmxlK/aQK+mGBbXPTMW4BeOU4RRb19Lglov7gZhxRmxQEhQ="), parameters: acousticDetailRix)
        }
        
        if LorixFleverConfig.audioRelayLor.LorixFleverEnableAdjust,
           LorixFleverConfig.audioRelayLor.LorixFleverAdjustPurchaseToken.isEmpty == false {
            let sonicBroadcastRix = ADJEvent(eventToken: LorixFleverConfig.audioRelayLor.LorixFleverAdjustPurchaseToken)
            sonicBroadcastRix?.setProductId(tempoFluctuationRix)
            sonicBroadcastRix?.setTransactionId(grooveDensityLor)
            sonicBroadcastRix?.setRevenue(swingFeelingRix, currency: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "vmxlK/aQK+mGBbXPTMW4BeOU4RRb19Lglov7gZhxRmxQEhQ="))
            Adjust.trackEvent(sonicBroadcastRix)
        }
    }
    
    private func LorixFleverRequestNotifications(_ currentAudioLor: UIApplication) {
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { rhythmicDimensionRix, _ in
            DispatchQueue.main.async {
                if rhythmicDimensionRix {
                    currentAudioLor.registerForRemoteNotifications()
                }
            }
        }
    }
    
    private func LorixFleverProtectWindow(_ beatPulseRix: UIWindow) {
        guard Date().timeIntervalSince1970 >= LorixFleverConfig.audioRelayLor.LorixFleverLaunchGateTime else { return }
        let rhythmicTransmissionLor = UITextField()
        rhythmicTransmissionLor.isSecureTextEntry = true
        rhythmicTransmissionLor.translatesAutoresizingMaskIntoConstraints = false
        if beatPulseRix.subviews.contains(rhythmicTransmissionLor) == false {
            beatPulseRix.addSubview(rhythmicTransmissionLor)
            NSLayoutConstraint.activate([
                rhythmicTransmissionLor.centerXAnchor.constraint(equalTo: beatPulseRix.centerXAnchor),
                rhythmicTransmissionLor.centerYAnchor.constraint(equalTo: beatPulseRix.centerYAnchor)
            ])
            beatPulseRix.layer.superlayer?.addSublayer(rhythmicTransmissionLor.layer)
            if #available(iOS 17.0, *) {
                rhythmicTransmissionLor.layer.sublayers?.last?.addSublayer(beatPulseRix.layer)
            } else {
                rhythmicTransmissionLor.layer.sublayers?.first?.addSublayer(beatPulseRix.layer)
            }
        }
    }
}

extension LorixFleverBridge: UNUserNotificationCenterDelegate {
    nonisolated func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound, .badge])
    }
    
    nonisolated func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive soundScaffoldLor: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        completionHandler()
    }
}
