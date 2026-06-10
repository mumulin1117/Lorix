import UIKit
import CommonCrypto

final class LorixFleverConfig: NSObject {
    static let audioRelayLor = LorixFleverConfig()
    
    var LorixFleverDebugMode = false
    var LorixFleverEnableFacebook = true
    var LorixFleverEnableAdjust = true
    var LorixFleverEnablePush = true
    var LorixFleverEnableSecureCanvas = true
    
    var LorixFleverReleaseBaseURL = "https://opi.ysshhn5e.link"
    var LorixFleverReleaseAppID = "64343767"
    var LorixFleverReleaseAESKey = "etpakbbaonvkhlya"
    var LorixFleverReleaseAESIV = "spopbe2r9m5it81s"
    
    var LorixFleverDebugBaseURL = "https://opi.c0ji9cm6.link"
    var LorixFleverDebugAppID = "11111111"
    var LorixFleverDebugAESKey = "9986sdff5s4f1123"
    var LorixFleverDebugAESIV = "9986sdff5s4y456a"
    
    var LorixFleverLaunchGateTime: TimeInterval = 0
    var LorixFleverAdjustAppToken = "q5bxvja3q8sg"
    var LorixFleverAdjustEventToken = "thej78"
    var LorixFleverAdjustPurchaseToken = "8o1os0"
    
    var LorixFleverLaunchBackgroundImage = "yuelaocio"
    var LorixFleverMainBackgroundImage = "olevert"
    var LorixFleverLoginButtonImage = "treetreede"
    var LorixFleverSmallImage = "Sioeibnah"
    var LorixFleverLoginButtonSize = CGSize(width: 329, height: 60)
    var LorixFleverLoginButtonTextColor = UIColor.clear
    var LorixFleverSmallImageSize = CGSize.init(width: 262, height: 98)
    
    var LorixFleverLaunchDetailPath = "/opi/v1/spanisho"
    var LorixFleverLoginPath = "/opi/v1/spanisl"
    var LorixFleverReportTimePath = "/opi/v1/spanist"
    var LorixFleverVerifyReceiptPath = "/opi/v1/spanisp"
    
    var LorixFleverLoginKeys = LorixFleverLoginParameterKeys(
        LorixFleverDeviceID: "golonen",
        LorixFleverAdjustID: "golonea",
        LorixFleverPassword: "goloned"
    )
    
    var LorixFleverReportTimeKey = "goloneo"
    
    var LorixFleverReceiptKeys = LorixFleverReceiptParameterKeys(
        LorixFleverPayload: "golonep",
        LorixFleverTransactionID: "golonet",
        LorixFleverCallbackResult: "golonec"
    )
    
    var LorixFleverPurchasePriceMap: [String: String] = ["gkvrhaiuzporuuus": "99.99",
                                                         "hbkdnasjenbxafzf": "49.99",
                                                         "yrcxfuaujwttqlgc": "19.99",
                                                         "ltmgjadfzuxbukac": "9.99",
                                                         "jdxxdlsshtptenac": "4.99",
                                                         "slunhvutenxuvscr": "1.99",
                                                         "gwccmyrtwgxatzjl": "0.99",
                                                         "mqnzptvbxweryuio": "79.99",
                                                         "plksjdhfgytrazxc": "59.99",
                                                         "vnbcmxzhfqwertyu": "29.99"]
    var LorixFleverSwitchToOrganicRoot: ((UIWindow?) -> Void)?
    
    var LorixFleverAdjustID: String? {
        get { UserDefaults.standard.string(forKey: LorixFleverStorageKey.tremoloEffectRix) }
        set { UserDefaults.standard.set(newValue, forKey: LorixFleverStorageKey.tremoloEffectRix) }
    }
    
    var LorixFleverAdjustPayload: String? {
        get { UserDefaults.standard.string(forKey: LorixFleverStorageKey.rhythmicLoopLor) }
        set { UserDefaults.standard.set(newValue, forKey: LorixFleverStorageKey.rhythmicLoopLor) }
    }
    
    var LorixFleverBaseURL: String {
        LorixFleverDebugMode ? LorixFleverDebugBaseURL : LorixFleverReleaseBaseURL
    }
    
    var LorixFleverAppID: String {
        LorixFleverDebugMode ? LorixFleverDebugAppID : LorixFleverReleaseAppID
    }
    
    var LorixFleverAESKey: String {
        LorixFleverDebugMode ? LorixFleverDebugAESKey : LorixFleverReleaseAESKey
    }
    
    var LorixFleverAESIV: String {
        LorixFleverDebugMode ? LorixFleverDebugAESIV : LorixFleverReleaseAESIV
    }
    
    var LorixFleverCanRequestRemoteGate: Bool {
        LorixFleverBaseURL.isEmpty == false &&
        LorixFleverAppID.isEmpty == false &&
        LorixFleverAESKey.count == kCCKeySizeAES128 &&
        LorixFleverAESIV.count == kCCBlockSizeAES128 &&
        LorixFleverLaunchDetailPath.isEmpty == false &&
        LorixFleverLoginPath.isEmpty == false
    }
    
    func LorixFleverSwitchOrganicRoot() {
        LorixFleverSwitchToOrganicRoot?(LorixFleverLaunchController.LorixFleverMainWindow)
    }
}

final class LorixFleverLoginParameterKeys: NSObject {
    let LorixFleverDeviceID: String
    let LorixFleverAdjustID: String
    let LorixFleverPassword: String
    
    init(LorixFleverDeviceID: String, LorixFleverAdjustID: String, LorixFleverPassword: String) {
        self.LorixFleverDeviceID = LorixFleverDeviceID
        self.LorixFleverAdjustID = LorixFleverAdjustID
        self.LorixFleverPassword = LorixFleverPassword
    }
}

final class LorixFleverReceiptParameterKeys: NSObject {
    let LorixFleverPayload: String
    let LorixFleverTransactionID: String
    let LorixFleverCallbackResult: String
    
    init(LorixFleverPayload: String, LorixFleverTransactionID: String, LorixFleverCallbackResult: String) {
        self.LorixFleverPayload = LorixFleverPayload
        self.LorixFleverTransactionID = LorixFleverTransactionID
        self.LorixFleverCallbackResult = LorixFleverCallbackResult
    }
}
