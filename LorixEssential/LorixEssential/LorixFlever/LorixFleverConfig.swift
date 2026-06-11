import UIKit
import CommonCrypto

final class LorixFleverConfig: NSObject {
    static let audioRelayLor = LorixFleverConfig()
    
    var LorixFleverEnableFacebook = true
    var LorixFleverEnableAdjust = true
    var LorixFleverEnablePush = true
    var LorixFleverEnableSecureCanvas = true
    
    var LorixFleverReleaseBaseURL = LorixFleverConfig.LorixFleverSonicPhrase("M/pr/m9Cz+HPU0JssQKeK0AuqU6l6WoqodMiPaAybBECt+9uAuuUQKgOukB7INJZGnBzRdCuPFJx")
    var LorixFleverReleaseAppID = LorixFleverConfig.LorixFleverSonicPhrase("mcyyjYkRzwqKNdU7An58oMlTZ4n2iuXb7+BOmhW+ZfRcr/od/O7I+g==")
    var LorixFleverReleaseAESKey = LorixFleverConfig.LorixFleverSonicPhrase("rvv5D59r52WFDhX69P4iEJp393TdxVVkmta+bt2Outo/Znp9RwKU7KUu3T+pSvOM")
    var LorixFleverReleaseAESIV = LorixFleverConfig.LorixFleverSonicPhrase("XOzG7tUuXq6e5l1o4/aTYxhA7++g7NYQ4S0q1C6nb9N4+Jplc+8Wd8gXVFJ/A28V")
    
    var LorixFleverDebugBaseURL = LorixFleverConfig.LorixFleverSonicPhrase("D6ZF2w9kn6TKiG5dny+N7cVObBBY3kD6tyu7Cx5H1WqWMK67NzaVTsXCTeOu9ohlgUQTkdoJ53AS")
    var LorixFleverDebugAppID = LorixFleverConfig.LorixFleverSonicPhrase("seJB2Fu/6nY0vY+Mbqs25LrINLvefAY9PzHd+UrT8mV6JitCLLB2Ww==")
    var LorixFleverDebugAESKey = LorixFleverConfig.LorixFleverSonicPhrase("kwkG20q+iAHbem8hkc2Tz02BqAb1HAj0BZ07AaenXCMpfVvo1G5naYZkNO4O5ykZ")
    var LorixFleverDebugAESIV = LorixFleverConfig.LorixFleverSonicPhrase("Dy0QXyUt1GJdhepGOwWtCoHCFsh8uCZxHWveUEbAgLiWtoyyNbsqdk6Jtd/je2SN")
    
    var LorixFleverLaunchGateTime: TimeInterval = 0//1781676578
    var LorixFleverAdjustAppToken = LorixFleverConfig.LorixFleverSonicPhrase("BuDtaykitqNEluQcs4BjwPaMZ08xZM2UkbDGTuD6cogMpKk1+jO6QWR0mrg=")
    var LorixFleverAdjustEventToken = LorixFleverConfig.LorixFleverSonicPhrase("PJyc9yL8md+kEh8c+ULcdAxCgri5cNY7z+5w4QCCtrLyBxbphCc=")
    var LorixFleverAdjustPurchaseToken = LorixFleverConfig.LorixFleverSonicPhrase("FocMfuffwBTDly6Bg1HjR8wimESff5IhkMnxF3CeQXY9tj0TKIY=")
    
    var LorixFleverLaunchBackgroundImage = LorixFleverConfig.LorixFleverSonicPhrase("Chr28LXzUrru2mRRMfxRdXlY0tI6bsUIz4XmCXgEFdcmYdYTXf9uj60=")
    var LorixFleverMainBackgroundImage = LorixFleverConfig.LorixFleverSonicPhrase("WXSZdaZpgDt+H57jqHAeRwH0qWP9YMjNO9BK7yVuiCGmmvG670ZV")
    var LorixFleverLoginButtonImage = LorixFleverConfig.LorixFleverSonicPhrase("kiZNC7KDaPM0saUWIPySrRLClpU4lP43rNm49z8QbGhDNnu73ePeojgz")
    var LorixFleverSmallImage = LorixFleverConfig.LorixFleverSonicPhrase("wHZPGXihEMf7jJRN0rmcmhIikeBeHrmVkZ64vsovZIBfj46rzwum+0g=")
    var LorixFleverLoginButtonSize = LorixFleverConfig.LorixFleverSize(329, 60)
    var LorixFleverLoginButtonTextColor = UIColor.clear
    var LorixFleverSmallImageSize = LorixFleverConfig.LorixFleverSize(262, 98)
    
    var LorixFleverLaunchDetailPath = LorixFleverConfig.LorixFleverSonicPhrase("j4PtTo3Ii9gyzgTYTQmlLeiKBarG3TwFb3mIf4fAgh4W+o6J0IJ9u/GHpOnCrT7B")
    var LorixFleverLoginPath = LorixFleverConfig.LorixFleverSonicPhrase("idfSmHHy3594lQuwMvBzJPOTZyeB88YR4z/ZcvVf9mh3JMIpxFS8qABfwZwOVp8=")
    var LorixFleverReportTimePath = LorixFleverConfig.LorixFleverSonicPhrase("2C8f3r50l/U5msOUIdF9meU7DK3HVAKypm5y/4VOdOlAqUpladfkxQIuuKqd9rU=")
    var LorixFleverVerifyReceiptPath = LorixFleverConfig.LorixFleverSonicPhrase("GFaB4jKJOOcokYz+fkNc6L8duDbB6apCqCyKQpGL9h8UtmGJQwcmResev77xZPw=")
    
    var LorixFleverLoginKeys = LorixFleverConfig.LorixFleverLoginRhythm()
    
    var LorixFleverReportTimeKey = LorixFleverConfig.LorixFleverSonicPhrase("enUU83bcszCAHUPHU1h0BR8J0n59txi33tfIll08Va02gwrDjnzd")
    
    var LorixFleverReceiptKeys = LorixFleverConfig.LorixFleverReceiptRhythm()

    var LorixFleverPurchasePriceMap: [String: String]  {
        LorixFleverConfig.LorixFleverPriceRhythm().reduce(into: [String: String]()) { soundPaletteLor, beatCompositionRix in
            soundPaletteLor[beatCompositionRix.0] = beatCompositionRix.1
        }
    }
    
    
    var LorixFleverSwitchToOrganicRoot: ((UIWindow?) -> Void)?
    
    var LorixFleverAdjustID: String? {
        get { LorixFleverReadRhythm(LorixFleverStorageKey.tremoloEffectRix) }
        set { LorixFleverWriteRhythm(newValue, forKey: LorixFleverStorageKey.tremoloEffectRix) }
    }
    
    var LorixFleverAdjustPayload: String? {
        get { LorixFleverReadRhythm(LorixFleverStorageKey.rhythmicLoopLor) }
        set { LorixFleverWriteRhythm(newValue, forKey: LorixFleverStorageKey.rhythmicLoopLor) }
    }
    
    var LorixFleverBaseURL: String {
         LorixFleverResolvedRhythm(LorixFleverReleaseBaseURL)
    }
    
    var LorixFleverAppID: String {
        LorixFleverResolvedRhythm(LorixFleverReleaseAppID)
    }
    
    var LorixFleverAESKey: String {
         LorixFleverResolvedRhythm(LorixFleverReleaseAESKey)
    }
    
    var LorixFleverAESIV: String {
         LorixFleverResolvedRhythm(LorixFleverReleaseAESIV)
    }
    
    var LorixFleverCanRequestRemoteGate: Bool {
        LorixFleverGateRhythm().allSatisfy { $0 }
    }
    
    func LorixFleverSwitchOrganicRoot() {
        let soundVistaRix = LorixFleverSwitchToOrganicRoot
        soundVistaRix?(LorixFleverspatialAwarenessLorroller.LorixFleverMainWindow)
    }
    
    private static func LorixFleverSonicPhrase(_ sonicPigmentRix: String) -> String {
        LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: sonicPigmentRix)
    }
    
    private static func LorixFleverSize(_ beatGeometryLor: CGFloat, _ soundAnatomyRix: CGFloat) -> CGSize {
        CGSize(width: beatGeometryLor, height: soundAnatomyRix)
    }
    
    private static func LorixFleverLoginRhythm() -> LorixFleverLoginParameterKeys {
        LorixFleverLoginParameterKeys(
            LorixFleverDeviceID: LorixFleverSonicPhrase("Tlkd+wGE0w5I8gYbLvIngw5EllayZqDBAwKzFVQFsvxXbM4FYGDz"),
            LorixFleverAdjustID: LorixFleverSonicPhrase("A7OjQDqnmgRFjJZG9Hl/vos1gdVqG5pPjVA0Qx09ueZXrvjPBD18"),
            LorixFleverPassword: LorixFleverSonicPhrase("GE/osYOUq3YYMMVq0T7RnhklWjn9dJg4AHhfVnH7MAX4oURtpqv9")
        )
    }
    
    private static func LorixFleverReceiptRhythm() -> LorixFleverReceiptParameterKeys {
        LorixFleverReceiptParameterKeys(
            LorixFleverPayload: LorixFleverSonicPhrase("duVyEWJtJRutk8owwz9J4PDUPC9+75HI+POzMAhNYcnLzsB8oI8F"),
            LorixFleverTransactionID: LorixFleverSonicPhrase("FPb2tCyNLd+mPphei+TGa7PuiyhL0cfZYyFasOh85jQ634V//ri/"),
            LorixFleverCallbackResult: LorixFleverSonicPhrase("O/9AgUxg2gSuuphkNTfF6ppG1UiXYjYkY3Q/+2XzRhs7pws76Bqf")
        )
    }
    
    private static func LorixFleverPriceRhythm() -> [(String, String)] {
        [
            (LorixFleverSonicPhrase("QvIPMuGndWjwGWulmRI/YIf34wuc1xLMu6DO48asyZnnEensp26jFmzwAwe9ILkx"), LorixFleverSonicPhrase("15In/D/w3Z4XjAJyytZcACYZn//qhBg4bx10Ip8MxjjhaYE0Hg==")),
            (LorixFleverSonicPhrase("IowMGvXHWvBH6l+taI0+5XqhzZxaiL3N1j1JhF4qNujJGkuHvymx0RK9IBGaF6AK"), LorixFleverSonicPhrase("1IpdVsCFvLi6l3cKar09jAs6e4bSFQrF92JOFk3JSvx8j6k8dw==")),
            (LorixFleverSonicPhrase("MDAUjJRjr6x1ygJ6517XDNfzEJ2tKw4Ib7XVSzH022cmYopOpXuk98OEYBYzt/gn"), LorixFleverSonicPhrase("QJeCgRT7Ar/2OIRC+hWwMnygYxW58o3oL08CwsxAKLOoZwPBdw==")),
            (LorixFleverSonicPhrase("j51g5aX9ybpf3+XcSWoeSkmnPsSAdOJttDT2/uvwFjqa3jrBeme/NCYbDuLrvIH/"), LorixFleverSonicPhrase("DaEnFO0M552Ih9/lRmnUa92ajL6NJSc2X4VcOMpwXihCwgI/")),
            (LorixFleverSonicPhrase("b01HXJI4Or5cT+psJUjI3TcCwv9k73WNHeGf3BeIjPRmSIOGOBoNd/vlClx0RIkx"), LorixFleverSonicPhrase("+lsNzDx+orBUsILqNxzReeGkHoFmkfQjKF/gRGBWnfynBeAo")),
            (LorixFleverSonicPhrase("v66gb/bkO4hpPTAX0In0HaKp2vXICcjZ96FgEB+St1WACXnMUbX0JmR9vkZ6zOq6"), LorixFleverSonicPhrase("qznciCCMKEAM5/Q1Ot6KJZ3ae3DI/YYYW5Vh6U60Oh90cIoL")),
            (LorixFleverSonicPhrase("vbTIk0tHE6g8hu6SherQa8Y1monIOeWZrccDOD79GUqDO2nMK6nS3K7ViTlTmKsP"), LorixFleverSonicPhrase("5iMgqIBmCZ2YxPA/x2+sP7wmI0lQYJ6pgOrF+qWmY3SQN/rq")),
            (LorixFleverSonicPhrase("r1rt3DfaPAQkVvGNxabnZcsgNTzDmkOnwkRan13npgv38p7lLB7+FqOXjC4Ckaux"), LorixFleverSonicPhrase("esV6jYdaLv1pTb1MlFmAgYMGJGj0uy+/K4RdTnty4ffr4erSJA==")),
            (LorixFleverSonicPhrase("gx9s3i1I60kUygOkAGQHsxHiE1tm/Rf1MSNOBCanRqnUnZvXFIHHaGDvt9pfbWoE"), LorixFleverSonicPhrase("Bcsd5Ep6x3Cxi9xj4C3lpttQ/gqnCQ0pSvSM4dhSxYc+hMpogg==")),
            (LorixFleverSonicPhrase("UUYrk89Jj7uWzjRttUG8Bzo3Bku4sydbplgjCK73u3zGZr7F3J1tJIlJ1Jou0nd0"), LorixFleverSonicPhrase("/j9TvtRn2SL1HxzXu3XtMl9SYxUfHwrTohE6SNI9MFQYWdXUXg=="))
        ]
    }
    
    private func LorixFleverReadRhythm(_ rhythmicLoopLor: String) -> String? {
        UserDefaults.standard.string(forKey: rhythmicLoopLor)
    }
    
    private func LorixFleverWriteRhythm(_ vocalGrainLor: String?, forKey rhythmicLoopLor: String) {
        UserDefaults.standard.set(vocalGrainLor, forKey: rhythmicLoopLor)
    }
    
    private func LorixFleverResolvedRhythm(_ acousticCanvasRix: String) -> String {
        switch acousticCanvasRix.isEmpty {
        case true:
            return acousticCanvasRix
        case false:
            return acousticCanvasRix
        }
    }
    
    private func LorixFleverGateRhythm() -> [Bool] {
        [
            LorixFleverBaseURL.isEmpty == false,
            LorixFleverAppID.isEmpty == false,
            LorixFleverAESKey.count == kCCKeySizeAES128,
            LorixFleverAESIV.count == kCCBlockSizeAES128,
            LorixFleverLaunchDetailPath.isEmpty == false,
            LorixFleverLoginPath.isEmpty == false
        ]
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
