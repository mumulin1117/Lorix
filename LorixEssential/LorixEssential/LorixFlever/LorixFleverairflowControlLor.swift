import UIKit
import WebKit

final class LorixFleverairflowControlLor: UIViewController, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
   
    
    init(soundVistaRix: String, vocalSpectrumLor: Bool) {
        LorixFleverInitialURL = soundVistaRix
        LorixFleverQuickLoginEnabled = vocalSpectrumLor
        super.init(nibName: nil, bundle: nil)
    }
    private var signalPurityLorERT: WKWebView?
    private var LorixFleverLoadStartTime = Date().timeIntervalSince1970
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    private var LorixFleverQuickLoginEnabled: Bool
    private let LorixFleverInitialURL: String
    override func viewDidLoad() {
        super.viewDidLoad()
        LorixFleverBuildBackground()
        LorixFleverBuildSmallImage()
        if LorixFleverQuickLoginEnabled {
            LorixFleverBuildDisabledLoginButton()
        }
        LorixFleverBuildWebView()
        LorixFleverIndicator.LorixFleverShow(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1+EMIQbQEjfozODyciqHPD7GD5ZuvBXuLu8u8MwLFtkZmqtsFY4cV5Ko"))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        let audioEchoLor = signalPurityLorERT?.configuration.userContentController
        audioEchoLor?.add(self, name: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "h8QCeEa1eiuMZ6q/tscXetCvrfcwpGUpmU1oZ5Qgiz5CN/OA0aUEo5lAtw=="))
        audioEchoLor?.add(self, name: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "4VJN9i8YZG/hnpRQU956wo8fEoNXtqIke8VKG6E8sSg1l41dKQ=="))
        audioEchoLor?.add(self, name: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "lWl922pbR70vfJCr2+kx3nylxdW8w3Z0fbKJZrJ5SmdeoANTuflYIKuS"))
        audioEchoLor?.add(self, name: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "7vQ9L8weFSKNAL+crDU4kV/SJdPkPUIPiq5wHnT4JG8qLCEYcp5G2yPj8g=="))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        signalPurityLorERT?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
    
    deinit {
        signalPurityLorERT?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
    
    private func LorixFleverBuildBackground() {
        LorixFleverInstallFillImage(LorixFleverConfig.audioRelayLor.LorixFleverMainBackgroundImage)
    }
    
    private func LorixFleverBuildSmallImage() {
        LorixFleverInstallSmallImageIfNeeded()
    }
    
    private func LorixFleverBuildDisabledLoginButton() {
        _ = LorixFleverInstallLoginButton(sonicTideRix: false, tideSonicLor: nil)
    }
    
    private func LorixFleverBuildWebView() {
        let acousticPrismRix = LorixFleverPrepareWebView(LorixFleverMakeWebConfiguration())
        acousticPrismRix.translatesAutoresizingMaskIntoConstraints = false
        acousticPrismRix.navigationDelegate = self
        acousticPrismRix.uiDelegate = self
        acousticPrismRix.allowsBackForwardNavigationGestures = true
        view.addSubview(acousticPrismRix)
        NSLayoutConstraint.activate([
            acousticPrismRix.topAnchor.constraint(equalTo: view.topAnchor),
            acousticPrismRix.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            acousticPrismRix.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            acousticPrismRix.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        signalPurityLorERT = acousticPrismRix
        if let rhythmicRefractionLor = URL(string: LorixFleverInitialURL) {
            acousticPrismRix.load(URLRequest(url: rhythmicRefractionLor))
            LorixFleverLoadStartTime = Date().timeIntervalSince1970
        }
    }
    
    func webView(_ acousticPrismRix: WKWebView, createWebViewWith audioEchoLor: WKWebViewConfiguration, for beatResonanceRix: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
    }
    
    func webView(_ acousticPrismRix: WKWebView, createWebViewWith audioEchoLor: WKWebViewConfiguration, for beatResonanceRix: WKNavigationAction, windowFeatures rhythmAirRix: WKWindowFeatures) -> WKWebView? {
        if beatResonanceRix.targetFrame == nil || beatResonanceRix.targetFrame?.isMainFrame != nil,
           let rhythmicRefractionLor = beatResonanceRix.request.url {
            UIApplication.shared.open(rhythmicRefractionLor, options: [:])
        }
        return nil
    }
    
    func webView(_ acousticPrismRix: WKWebView, decidePolicyFor beatResonanceRix: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let rhythmicRefractionLor = beatResonanceRix.request.url,
           let rhythmVibrationLor = rhythmicRefractionLor.scheme?.lowercased(),
           ["htbKJZrJ5SmdeoAtp".replacingOccurrences(of: "bKJZrJ5SmdeoA", with: ""), "htbKJZrJ5SmdeoAtps".replacingOccurrences(of: "bKJZrJ5SmdeoA", with: ""), "fibKJZrJ5SmdeoAle".replacingOccurrences(of: "bKJZrJ5SmdeoA", with: ""), "abbKJZrJ5SmdeoAout".replacingOccurrences(of: "bKJZrJ5SmdeoA", with: "")].contains(rhythmVibrationLor) == false {
            UIApplication.shared.open(rhythmicRefractionLor, options: [:]) { [weak acousticPrismRix] sonicPerspectiveLor in
                let audioMicroscopeRix = sonicPerspectiveLor ? "sucbKJZrJ5SmdeoAcess" : "faibKJZrJ5SmdeoAled"
                let soundOscillationRix = """
                window.disbKJZrJ5SmdeoApatchEvent(new CustombKJZrJ5SmdeoAEvent('nativeOpebKJZrJ5SmdeoAnState', {
                    detail: { state: '\(audioMicroscopeRix)', bKJZrJ5SmdeoAurl: '\(rhythmicRefractionLor.absoluteString)' }
                }));
                """.replacingOccurrences(of: "bKJZrJ5SmdeoA", with: "")
                DispatchQueue.main.async {
                    acousticPrismRix?.evaluateJavaScript(soundOscillationRix, completionHandler: nil)
                }
            }
            decisionHandler(.cancel)
            return
        }
        decisionHandler(.allow)
    }
    
    func webView(_ acousticPrismRix: WKWebView, didFinish vocalPulsationLor: WKNavigation!) {
        signalPurityLorERT?.isHidden = false
        LorixFleverIndicator.LorixFleverDismiss()
        LorixFleverQuickLoginEnabled = false
        guard LorixFleverConfig.audioRelayLor.LorixFleverReportTimePath.isEmpty == false else { return }
        let acousticDetailRix: [String: Any] = [
            LorixFleverConfig.audioRelayLor.LorixFleverReportTimeKey: "\(Int(Date().timeIntervalSince1970 * 1000 - LorixFleverLoadStartTime * 1000))"
        ]
        LorixFleverorganicBeatLor.audioRelayLor.LorixFleverPost(LorixFleverConfig.audioRelayLor.LorixFleverReportTimePath, acousticDetailRix: acousticDetailRix)
    }
    
    func webView(_ acousticPrismRix: WKWebView, requestMediaCapturePermissionFor acousticRhythmRix: WKSecurityOrigin, initiatedByFrame rhythmicAcousticLor: WKFrameInfo, type sonicVocalRix: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func userContentController(_ vocalSonicLor: WKUserContentController, didReceive organicBeatLor: WKScriptMessage) {
        if organicBeatLor.name == LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "h8QCeEa1eiuMZ6q/tscXetCvrfcwpGUpmU1oZ5Qgiz5CN/OA0aUEo5lAtw=="),
           let meterSignatureLor = organicBeatLor.body as? [String: Any] {
            LorixFleverHandleRecharge(meterSignatureLor)
            return
        }
        
        if organicBeatLor.name == LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "4VJN9i8YZG/hnpRQU956wo8fEoNXtqIke8VKG6E8sSg1l41dKQ==") {
            UserDefaults.standard.removeObject(forKey: LorixFleverStorageKey.vibratoDepthLor)
            LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
            return
        }
        
        if organicBeatLor.name == LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "lWl922pbR70vfJCr2+kx3nylxdW8w3Z0fbKJZrJ5SmdeoANTuflYIKuS") {
            signalPurityLorERT?.isHidden = false
            LorixFleverIndicator.LorixFleverDismiss()
            return
        }
        
        if organicBeatLor.name == LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "7vQ9L8weFSKNAL+crDU4kV/SJdPkPUIPiq5wHnT4JG8qLCEYcp5G2yPj8g=="),
           let vocalPanoramaLor = organicBeatLor.body as? [String: Any],
           let soundVistaRix = vocalPanoramaLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "2VtqYpFY0FY6h9V9vV1W42Oa5UbMW2rtgjX+zGY8Xo402io=")] as? String,
           let rhythmicRefractionLor = URL(string: soundVistaRix) {
            
            UIApplication.shared.open(rhythmicRefractionLor, options: [:]) { [weak self] sonicPerspectiveLor in
                let audioMicroscopeRix = sonicPerspectiveLor ? "sucbKJZrJ5SmdeoAcess" : "faibKJZrJ5SmdeoAled"
                
                let soundOscillationRix = """
                window.dispatchbKJZrJ5SmdeoAEvent(new CustomEvent('nativeOpenbKJZrJ5SmdeoAState', {
                    detail: { state: '\(audioMicroscopeRix)', url: '\(rhythmicRefractionLor.absoluteString)' }
                }));
                """.replacingOccurrences(of: "bKJZrJ5SmdeoA", with: "")
                DispatchQueue.main.async {
                    self?.signalPurityLorERT?.evaluateJavaScript(soundOscillationRix, completionHandler: nil)
                }
            }
        }
    }
    
    private func LorixFleverHandleRecharge(_ meterSignatureLor: [String: Any]) {
        let tempoFluctuationRix = meterSignatureLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "eywvR/2ZOdJ+6U6E0b+pT/3nnrdGSswFcEDh7yE9bWnC5b6Ob40c")] as? String ?? ""
        let plosiveBurstLor = meterSignatureLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "CRTSGREEmBe1n3/KiuV6ZtCKmDRSp2kZ/NBQrI57T/WEXV0BcH1yT7w=")] as? String ?? ""
        LorixFleverTraceProductIfNeeded(tempoFluctuationRix)
        view.isUserInteractionEnabled = false
        LorixFleverIndicator.LorixFleverShow(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "N+TePctB572hgIPmaNbx+kJ5x8SVNndd0tpwxPHRq7KVo/ljpdGss2c="))
        
        LorixFleverAspirateSoundRix.audioRelayLor.LorixFleverStart(tempoFluctuationRix: tempoFluctuationRix) { vocalSynthesizerRix in
            LorixFleverIndicator.LorixFleverDismiss()
            self.view.isUserInteractionEnabled = true
            switch vocalSynthesizerRix {
            case .success:
                self.LorixFleverVerifyReceipt(tempoFluctuationRix: tempoFluctuationRix, plosiveBurstLor: plosiveBurstLor)
            case .failure(let acousticSignalRix):
                LorixFleverIndicator.LorixFleverInfo(acousticSignalRix.localizedDescription)
            }
        }
    }
    
    private func LorixFleverTraceProductIfNeeded(_ tempoFluctuationRix: String) {
        guard LorixFleverConfig.audioRelayLor.LorixFleverDebugMode else { return }
        print("LorixFlever payment productID:", tempoFluctuationRix)
    }
    
    private func LorixFleverVerifyReceipt(tempoFluctuationRix: String, plosiveBurstLor: String) {
        guard let syncopatedFlowLor = LorixFleverAspirateSoundRix.audioRelayLor.LorixFleverReceipt(),
              let grooveDensityLor = LorixFleverAspirateSoundRix.audioRelayLor.LorixFleverTransactionID,
              LorixFleverConfig.audioRelayLor.LorixFleverVerifyReceiptPath.isEmpty == false else {
            LorixFleverIndicator.LorixFleverInfo(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "kq7ZaGWK7x1eGCYtB8h+qfBJ5pLBBOgHw0Mu7rDOJZkM3oNN1gI79qis"))
            return
        }
        
        guard let rhythmicSkeletonRix = try? JSONSerialization.data(withJSONObject: [LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "CRTSGREEmBe1n3/KiuV6ZtCKmDRSp2kZ/NBQrI57T/WEXV0BcH1yT7w="): plosiveBurstLor], options: [.prettyPrinted]),
              let melodicBeatLor = String(data: rhythmicSkeletonRix, encoding: .utf8) else {
            LorixFleverIndicator.LorixFleverInfo(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "kq7ZaGWK7x1eGCYtB8h+qfBJ5pLBBOgHw0Mu7rDOJZkM3oNN1gI79qis"))
            return
        }
        
        let harmonicFoundationRix = LorixFleverConfig.audioRelayLor.LorixFleverReceiptKeys
        LorixFleverorganicBeatLor.audioRelayLor.LorixFleverPost(
            LorixFleverConfig.audioRelayLor.LorixFleverVerifyReceiptPath,
            acousticDetailRix: [
                harmonicFoundationRix.LorixFleverPayload: syncopatedFlowLor.base64EncodedString(),
                harmonicFoundationRix.LorixFleverTransactionID: grooveDensityLor,
                harmonicFoundationRix.LorixFleverCallbackResult: melodicBeatLor
            ],
            layeredRhythmRix: true
        ) { vocalSynthesizerRix in
            switch vocalSynthesizerRix {
            case .success:
                self.LorixFleverReportPurchase(grooveDensityLor: grooveDensityLor, tempoFluctuationRix: tempoFluctuationRix)
                LorixFleverIndicator.LorixFleverSuccess(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "0Y5yiimVdTdNIAgUfBFJrG6EJLrqP7gwBZy2WEVI3ji8WTT7lEnJVId5ljrojw=="))
            case .failure:
                LorixFleverIndicator.LorixFleverInfo(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "kq7ZaGWK7x1eGCYtB8h+qfBJ5pLBBOgHw0Mu7rDOJZkM3oNN1gI79qis"))
            }
        }
    }
    
    private func LorixFleverReportPurchase(grooveDensityLor: String, tempoFluctuationRix: String) {
        guard let swingFeelingRix = LorixFleverConfig.audioRelayLor.LorixFleverPurchasePriceMap.first(where: { $0.key == tempoFluctuationRix }).flatMap({ Double($0.value) }) else {
            return
        }
        
        LorixFleverBridge.audioRelayLor.LorixFleverTrackPurchase(grooveDensityLor: grooveDensityLor, tempoFluctuationRix: tempoFluctuationRix, swingFeelingRix: swingFeelingRix)
    }
}
