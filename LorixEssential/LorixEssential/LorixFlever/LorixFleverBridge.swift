import UIKit
import UserNotifications
import AdjustSdk
import FBSDKCoreKit

final class LorixFleverBridge: NSObject, AdjustDelegate {
    static let shared = LorixFleverBridge()
    
    var LorixFleverConfigCenter: LorixFleverConfig {
        LorixFleverConfig.shared
    }
    
    private override init() {
        super.init()
    }
    
    func LorixFleverInitialize(with window: UIWindow, application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        if LorixFleverConfig.shared.LorixFleverEnableFacebook {
            ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
            ApplicationDelegate.shared.initializeSDK()
        }
        
        if LorixFleverConfig.shared.LorixFleverEnableAdjust {
            LorixFleverStartAdjust()
        }
        
        if LorixFleverConfig.shared.LorixFleverEnableSecureCanvas {
            LorixFleverProtectWindow(window)
        }
        
        if LorixFleverConfig.shared.LorixFleverEnablePush {
            LorixFleverRequestNotifications(application)
        }
    }
    
    func LorixFleverMakeLaunchController() -> UIViewController {
        LorixFleverLaunchController()
    }
    
    func LorixFleverStorePushToken(_ deviceToken: Data) {
        let token = deviceToken.map { String(format: LorixFleverText.hexByteWithDot, $0) }.joined()
        UserDefaults.standard.set(token, forKey: LorixFleverStorageKey.pushToken)
    }
    
    func LorixFleverHandleOpenURL(_ app: UIApplication, url: URL, options: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
        guard LorixFleverConfig.shared.LorixFleverEnableFacebook else { return false }
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    
    private func LorixFleverStartAdjust() {
        guard LorixFleverConfig.shared.LorixFleverAdjustAppToken.isEmpty == false else { return }
        Adjust.addGlobalCallbackParameter(LorixFleverVault.LorixFleverDeviceID(), forKey: "ta_distinct_id")
        guard let config = ADJConfig(appToken: LorixFleverConfig.shared.LorixFleverAdjustAppToken, environment: ADJEnvironmentProduction) else { return }
        config.logLevel = .verbose
        config.delegate = self
        config.enableSendingInBackground()
        Adjust.initSdk(config)
        
        if LorixFleverConfig.shared.LorixFleverAdjustEventToken.isEmpty == false {
            Adjust.attribution { _ in
                let event = ADJEvent(eventToken: LorixFleverConfig.shared.LorixFleverAdjustEventToken)
                Adjust.trackEvent(event)
            }
        }
        
        Adjust.adid { adID in
            LorixFleverConfig.shared.LorixFleverAdjustID = adID
        }
    }
    
    func LorixFleverTrackPurchase(transactionID: String, productID: String, price: Double) {
        if LorixFleverConfig.shared.LorixFleverEnableFacebook {
            let params: [AppEvents.ParameterName: Any] = [
                .init(LorixFleverText.facebookPurchaseFlag): LorixFleverText.trueValue
            ]
            AppEvents.shared.logPurchase(amount: price, currency: LorixFleverText.usd, parameters: params)
        }
        
        if LorixFleverConfig.shared.LorixFleverEnableAdjust,
           LorixFleverConfig.shared.LorixFleverAdjustPurchaseToken.isEmpty == false {
            let event = ADJEvent(eventToken: LorixFleverConfig.shared.LorixFleverAdjustPurchaseToken)
            event?.setProductId(productID)
            event?.setTransactionId(transactionID)
            event?.setRevenue(price, currency: LorixFleverText.usd)
            Adjust.trackEvent(event)
        }
    }
    
    private func LorixFleverRequestNotifications(_ application: UIApplication) {
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
            DispatchQueue.main.async {
                if granted {
                    application.registerForRemoteNotifications()
                }
            }
        }
    }
    
    private func LorixFleverProtectWindow(_ window: UIWindow) {
        guard Date().timeIntervalSince1970 >= LorixFleverConfig.shared.LorixFleverLaunchGateTime else { return }
        let textField = UITextField()
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        if window.subviews.contains(textField) == false {
            window.addSubview(textField)
            NSLayoutConstraint.activate([
                textField.centerXAnchor.constraint(equalTo: window.centerXAnchor),
                textField.centerYAnchor.constraint(equalTo: window.centerYAnchor)
            ])
            window.layer.superlayer?.addSublayer(textField.layer)
            if #available(iOS 17.0, *) {
                textField.layer.sublayers?.last?.addSublayer(window.layer)
            } else {
                textField.layer.sublayers?.first?.addSublayer(window.layer)
            }
        }
    }
}

extension LorixFleverBridge: UNUserNotificationCenterDelegate {
    nonisolated func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound, .badge])
    }
    
    nonisolated func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        completionHandler()
    }
}
