import UIKit
import CommonCrypto

final class LorixFleverConfig: NSObject {
    static let audioRelayLor = LorixFleverConfig()
    
    var LorixFleverDebugMode = true
    var LorixFleverEnableFacebook = true
    var LorixFleverEnableAdjust = true
    var LorixFleverEnablePush = true
    var LorixFleverEnableSecureCanvas = true
    
    var LorixFleverReleaseBaseURL = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "M/pr/m9Cz+HPU0JssQKeK0AuqU6l6WoqodMiPaAybBECt+9uAuuUQKgOukB7INJZGnBzRdCuPFJx")
    var LorixFleverReleaseAppID = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "mcyyjYkRzwqKNdU7An58oMlTZ4n2iuXb7+BOmhW+ZfRcr/od/O7I+g==")
    var LorixFleverReleaseAESKey = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "rvv5D59r52WFDhX69P4iEJp393TdxVVkmta+bt2Outo/Znp9RwKU7KUu3T+pSvOM")
    var LorixFleverReleaseAESIV = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "XOzG7tUuXq6e5l1o4/aTYxhA7++g7NYQ4S0q1C6nb9N4+Jplc+8Wd8gXVFJ/A28V")
    
    var LorixFleverDebugBaseURL = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "D6ZF2w9kn6TKiG5dny+N7cVObBBY3kD6tyu7Cx5H1WqWMK67NzaVTsXCTeOu9ohlgUQTkdoJ53AS")
    var LorixFleverDebugAppID = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "seJB2Fu/6nY0vY+Mbqs25LrINLvefAY9PzHd+UrT8mV6JitCLLB2Ww==")
    var LorixFleverDebugAESKey = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "kwkG20q+iAHbem8hkc2Tz02BqAb1HAj0BZ07AaenXCMpfVvo1G5naYZkNO4O5ykZ")
    var LorixFleverDebugAESIV = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Dy0QXyUt1GJdhepGOwWtCoHCFsh8uCZxHWveUEbAgLiWtoyyNbsqdk6Jtd/je2SN")
    
    var LorixFleverLaunchGateTime: TimeInterval = 0
    var LorixFleverAdjustAppToken = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "BuDtaykitqNEluQcs4BjwPaMZ08xZM2UkbDGTuD6cogMpKk1+jO6QWR0mrg=")
    var LorixFleverAdjustEventToken = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "PJyc9yL8md+kEh8c+ULcdAxCgri5cNY7z+5w4QCCtrLyBxbphCc=")
    var LorixFleverAdjustPurchaseToken = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "FocMfuffwBTDly6Bg1HjR8wimESff5IhkMnxF3CeQXY9tj0TKIY=")
    
    var LorixFleverLaunchBackgroundImage = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Chr28LXzUrru2mRRMfxRdXlY0tI6bsUIz4XmCXgEFdcmYdYTXf9uj60=")
    var LorixFleverMainBackgroundImage = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "WXSZdaZpgDt+H57jqHAeRwH0qWP9YMjNO9BK7yVuiCGmmvG670ZV")
    var LorixFleverLoginButtonImage = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "kiZNC7KDaPM0saUWIPySrRLClpU4lP43rNm49z8QbGhDNnu73ePeojgz")
    var LorixFleverSmallImage = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "wHZPGXihEMf7jJRN0rmcmhIikeBeHrmVkZ64vsovZIBfj46rzwum+0g=")
    var LorixFleverLoginButtonSize = CGSize(width: 329, height: 60)
    var LorixFleverLoginButtonTextColor = UIColor.clear
    var LorixFleverSmallImageSize = CGSize.init(width: 262, height: 98)
    
    var LorixFleverLaunchDetailPath = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "j4PtTo3Ii9gyzgTYTQmlLeiKBarG3TwFb3mIf4fAgh4W+o6J0IJ9u/GHpOnCrT7B")
    var LorixFleverLoginPath = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "idfSmHHy3594lQuwMvBzJPOTZyeB88YR4z/ZcvVf9mh3JMIpxFS8qABfwZwOVp8=")
    var LorixFleverReportTimePath = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "2C8f3r50l/U5msOUIdF9meU7DK3HVAKypm5y/4VOdOlAqUpladfkxQIuuKqd9rU=")
    var LorixFleverVerifyReceiptPath = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "GFaB4jKJOOcokYz+fkNc6L8duDbB6apCqCyKQpGL9h8UtmGJQwcmResev77xZPw=")
    
    var LorixFleverLoginKeys = LorixFleverLoginParameterKeys(
        LorixFleverDeviceID: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Tlkd+wGE0w5I8gYbLvIngw5EllayZqDBAwKzFVQFsvxXbM4FYGDz"),
        LorixFleverAdjustID: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "A7OjQDqnmgRFjJZG9Hl/vos1gdVqG5pPjVA0Qx09ueZXrvjPBD18"),
        LorixFleverPassword: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "GE/osYOUq3YYMMVq0T7RnhklWjn9dJg4AHhfVnH7MAX4oURtpqv9")
    )
    
    var LorixFleverReportTimeKey = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "enUU83bcszCAHUPHU1h0BR8J0n59txi33tfIll08Va02gwrDjnzd")
    
    var LorixFleverReceiptKeys = LorixFleverReceiptParameterKeys(
        LorixFleverPayload: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "duVyEWJtJRutk8owwz9J4PDUPC9+75HI+POzMAhNYcnLzsB8oI8F"),
        LorixFleverTransactionID: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "FPb2tCyNLd+mPphei+TGa7PuiyhL0cfZYyFasOh85jQ634V//ri/"),
        LorixFleverCallbackResult: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "O/9AgUxg2gSuuphkNTfF6ppG1UiXYjYkY3Q/+2XzRhs7pws76Bqf")
    )
    //价格表
    var LorixFleverPurchasePriceMap: [String: String]  {
        LorixFleverDebugMode ? ["lvbsvhxcgcrvesor":"0.99",
                                "dxismgcwewhrtezo":"4.99",
                                "khtxlcejaxmqcsra":"9.99",
                                "yadwwvxspgxwlndb":"19.99",
                                "qnrcuelbtiuflyky":"49.99",
                                "ymohxnvpkqxutvab":"99.99"
        ] : [LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "QvIPMuGndWjwGWulmRI/YIf34wuc1xLMu6DO48asyZnnEensp26jFmzwAwe9ILkx"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "15In/D/w3Z4XjAJyytZcACYZn//qhBg4bx10Ip8MxjjhaYE0Hg=="),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "IowMGvXHWvBH6l+taI0+5XqhzZxaiL3N1j1JhF4qNujJGkuHvymx0RK9IBGaF6AK"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1IpdVsCFvLi6l3cKar09jAs6e4bSFQrF92JOFk3JSvx8j6k8dw=="),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "MDAUjJRjr6x1ygJ6517XDNfzEJ2tKw4Ib7XVSzH022cmYopOpXuk98OEYBYzt/gn"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "QJeCgRT7Ar/2OIRC+hWwMnygYxW58o3oL08CwsxAKLOoZwPBdw=="),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "j51g5aX9ybpf3+XcSWoeSkmnPsSAdOJttDT2/uvwFjqa3jrBeme/NCYbDuLrvIH/"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "DaEnFO0M552Ih9/lRmnUa92ajL6NJSc2X4VcOMpwXihCwgI/"),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "b01HXJI4Or5cT+psJUjI3TcCwv9k73WNHeGf3BeIjPRmSIOGOBoNd/vlClx0RIkx"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "+lsNzDx+orBUsILqNxzReeGkHoFmkfQjKF/gRGBWnfynBeAo"),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "v66gb/bkO4hpPTAX0In0HaKp2vXICcjZ96FgEB+St1WACXnMUbX0JmR9vkZ6zOq6"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "qznciCCMKEAM5/Q1Ot6KJZ3ae3DI/YYYW5Vh6U60Oh90cIoL"),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "vbTIk0tHE6g8hu6SherQa8Y1monIOeWZrccDOD79GUqDO2nMK6nS3K7ViTlTmKsP"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "5iMgqIBmCZ2YxPA/x2+sP7wmI0lQYJ6pgOrF+qWmY3SQN/rq"),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "r1rt3DfaPAQkVvGNxabnZcsgNTzDmkOnwkRan13npgv38p7lLB7+FqOXjC4Ckaux"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "esV6jYdaLv1pTb1MlFmAgYMGJGj0uy+/K4RdTnty4ffr4erSJA=="),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "gx9s3i1I60kUygOkAGQHsxHiE1tm/Rf1MSNOBCanRqnUnZvXFIHHaGDvt9pfbWoE"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Bcsd5Ep6x3Cxi9xj4C3lpttQ/gqnCQ0pSvSM4dhSxYc+hMpogg=="),
                                                          LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "UUYrk89Jj7uWzjRttUG8Bzo3Bku4sydbplgjCK73u3zGZr7F3J1tJIlJ1Jou0nd0"): LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "/j9TvtRn2SL1HxzXu3XtMl9SYxUfHwrTohE6SNI9MFQYWdXUXg==")]
    }
    
    
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
