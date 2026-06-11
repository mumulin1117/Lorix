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
        LorixFleverInstallSurface()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LorixFleverToggleGesture(false)
        LorixFleverAttachHandlers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        LorixFleverToggleGesture(true)
        LorixFleverDetachHandlers()
    }
    
    deinit {
        LorixFleverDetachHandlers()
    }
    
    private func LorixFleverInstallSurface() {
        [
            { self.LorixFleverBuildBackground() },
            { self.LorixFleverBuildSmallImage() },
            { self.LorixFleverInstallGateButtonIfNeeded() },
            { self.LorixFleverBuildWebView() },
            { self.LorixFleverShowLoading() }
        ].forEach { $0() }
    }
    
    private func LorixFleverInstallGateButtonIfNeeded() {
        guard LorixFleverQuickLoginEnabled else { return }
        LorixFleverBuildDisabledLoginButton()
    }
    
    private func LorixFleverToggleGesture(_ pulsePatternRix: Bool) {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = pulsePatternRix
    }
    
    private func LorixFleverAttachHandlers() {
        LorixFleverScriptNames().forEach {
            signalPurityLorERT?.configuration.userContentController.add(self, name: $0)
        }
    }
    
    private func LorixFleverDetachHandlers() {
        signalPurityLorERT?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
    
    private func LorixFleverScriptNames() -> [String] {
        [
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "h8QCeEa1eiuMZ6q/tscXetCvrfcwpGUpmU1oZ5Qgiz5CN/OA0aUEo5lAtw=="),
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "4VJN9i8YZG/hnpRQU956wo8fEoNXtqIke8VKG6E8sSg1l41dKQ=="),
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "lWl922pbR70vfJCr2+kx3nylxdW8w3Z0fbKJZrJ5SmdeoANTuflYIKuS"),
            LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "7vQ9L8weFSKNAL+crDU4kV/SJdPkPUIPiq5wHnT4JG8qLCEYcp5G2yPj8g==")
        ]
    }
    
    private func LorixFleverShowLoading() {
        LorixFleverIndicator.LorixFleverShow(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "1+EMIQbQEjfozODyciqHPD7GD5ZuvBXuLu8u8MwLFtkZmqtsFY4cV5Ko"))
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
            LorixFleverLoad(acousticPrismRix, rhythmicRefractionLor: rhythmicRefractionLor)
        }
    }
    
    private func LorixFleverLoad(_ acousticPrismRix: WKWebView, rhythmicRefractionLor: URL) {
        acousticPrismRix.load(URLRequest(url: rhythmicRefractionLor))
        LorixFleverLoadStartTime = Date().timeIntervalSince1970
    }
    
    func webView(_ acousticPrismRix: WKWebView, createWebViewWith audioEchoLor: WKWebViewConfiguration, for beatResonanceRix: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
    }
    
    func webView(_ acousticPrismRix: WKWebView, createWebViewWith audioEchoLor: WKWebViewConfiguration, for beatResonanceRix: WKNavigationAction, windowFeatures rhythmAirRix: WKWindowFeatures) -> WKWebView? {
        if LorixFleverShouldOpen(beatResonanceRix),
           let rhythmicRefractionLor = beatResonanceRix.request.url {
            LorixFleverOpen(rhythmicRefractionLor)
        }
        return nil
    }
    
    func webView(_ acousticPrismRix: WKWebView, decidePolicyFor beatResonanceRix: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let rhythmicRefractionLor = beatResonanceRix.request.url
        let acousticRhythmRix = rhythmicRefractionLor.flatMap { LorixFleverDecision(for: $0) } ?? .allow
        if acousticRhythmRix == .cancel, let rhythmicRefractionLor {
            LorixFleverOpenWithCallback(rhythmicRefractionLor, acousticPrismRix: acousticPrismRix)
        }
        decisionHandler(acousticRhythmRix)
    }
    
    func webView(_ acousticPrismRix: WKWebView, didFinish vocalPulsationLor: WKNavigation!) {
        LorixFleverRevealWeb()
        LorixFleverReportLoadTimeIfNeeded()
    }
    
    func webView(_ acousticPrismRix: WKWebView, requestMediaCapturePermissionFor acousticRhythmRix: WKSecurityOrigin, initiatedByFrame rhythmicAcousticLor: WKFrameInfo, type sonicVocalRix: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func userContentController(_ vocalSonicLor: WKUserContentController, didReceive organicBeatLor: WKScriptMessage) {
        LorixFleverRouteScript(organicBeatLor)
    }
    
    private func LorixFleverShouldOpen(_ beatResonanceRix: WKNavigationAction) -> Bool {
        beatResonanceRix.targetFrame == nil || beatResonanceRix.targetFrame?.isMainFrame != nil
    }
    
    private func LorixFleverOpen(_ rhythmicRefractionLor: URL) {
        UIApplication.shared.open(rhythmicRefractionLor, options: [:])
    }
    
    private func LorixFleverDecision(for rhythmicRefractionLor: URL) -> WKNavigationActionPolicy {
        guard let rhythmVibrationLor = rhythmicRefractionLor.scheme?.lowercased() else { return .allow }
        return LorixFleverAllowedSchemes().contains(rhythmVibrationLor) ? .allow : .cancel
    }
    
    private func LorixFleverAllowedSchemes() -> [String] {
        [
            "htbKJZrJ5SmdeoAtp".replacingOccurrences(of: "bKJZrJ5SmdeoA", with: ""),
            "htbKJZrJ5SmdeoAtps".replacingOccurrences(of: "bKJZrJ5SmdeoA", with: ""),
            "fibKJZrJ5SmdeoAle".replacingOccurrences(of: "bKJZrJ5SmdeoA", with: ""),
            "abbKJZrJ5SmdeoAout".replacingOccurrences(of: "bKJZrJ5SmdeoA", with: "")
        ]
    }
    
    private func LorixFleverOpenWithCallback(_ rhythmicRefractionLor: URL, acousticPrismRix: WKWebView?) {
        UIApplication.shared.open(rhythmicRefractionLor, options: [:]) { [weak acousticPrismRix] sonicPerspectiveLor in
            let soundOscillationRix = self.LorixFleverOpenJavaScript(sonicPerspectiveLor: sonicPerspectiveLor, rhythmicRefractionLor: rhythmicRefractionLor)
            self.LorixFleverEvaluate(soundOscillationRix, acousticPrismRix: acousticPrismRix)
        }
    }
    
    private func LorixFleverOpenJavaScript(sonicPerspectiveLor: Bool, rhythmicRefractionLor: URL) -> String {
        let audioMicroscopeRix = LorixFleverOpenState(sonicPerspectiveLor)
        return """
        window.disbKJZrJ5SmdeoApatchEvent(new CustombKJZrJ5SmdeoAEvent('nativeOpebKJZrJ5SmdeoAnState', {
            detail: { state: '\(audioMicroscopeRix)', bKJZrJ5SmdeoAurl: '\(rhythmicRefractionLor.absoluteString)' }
        }));
        """.replacingOccurrences(of: "bKJZrJ5SmdeoA", with: "")
    }
    
    private func LorixFleverOpenState(_ sonicPerspectiveLor: Bool) -> String {
        sonicPerspectiveLor ? "sucbKJZrJ5SmdeoAcess" : "faibKJZrJ5SmdeoAled"
    }
    
    private func LorixFleverEvaluate(_ soundOscillationRix: String, acousticPrismRix: WKWebView?) {
        DispatchQueue.main.async {
            acousticPrismRix?.evaluateJavaScript(soundOscillationRix, completionHandler: nil)
        }
    }
    
    private func LorixFleverRevealWeb() {
        signalPurityLorERT?.isHidden = false
        LorixFleverIndicator.LorixFleverDismiss()
        LorixFleverQuickLoginEnabled = false
    }
    
    private func LorixFleverReportLoadTimeIfNeeded() {
        guard LorixFleverConfig.audioRelayLor.LorixFleverReportTimePath.isEmpty == false else { return }
        LorixFleverorganicBeatLor.audioRelayLor.LorixFleverPost(LorixFleverConfig.audioRelayLor.LorixFleverReportTimePath, acousticDetailRix: LorixFleverLoadTimePayload())
    }
    
    private func LorixFleverLoadTimePayload() -> [String: Any] {
        [
            LorixFleverConfig.audioRelayLor.LorixFleverReportTimeKey: "\(Int(Date().timeIntervalSince1970 * 1000 - LorixFleverLoadStartTime * 1000))"
        ]
    }
    
    private func LorixFleverRouteScript(_ organicBeatLor: WKScriptMessage) {
        let audioMapLor = LorixFleverScriptNames()
        switch organicBeatLor.name {
        case audioMapLor[0]:
            LorixFleverRouteRecharge(organicBeatLor.body)
        case audioMapLor[1]:
            LorixFleverRouteLogout()
        case audioMapLor[2]:
            LorixFleverRevealWeb()
        case audioMapLor[3]:
            LorixFleverRouteOpen(organicBeatLor.body)
        default:
            break
        }
    }
    
    private func LorixFleverRouteRecharge(_ vocalSonicLor: Any) {
        guard let meterSignatureLor = vocalSonicLor as? [String: Any] else { return }
        LorixFleverHandleRecharge(meterSignatureLor)
    }
    
    private func LorixFleverRouteLogout() {
        UserDefaults.standard.removeObject(forKey: LorixFleverStorageKey.vibratoDepthLor)
        LorixFleverspatialAwarenessLorroller.LorixFleverMainWindow?.rootViewController = LorixFleveraudioBlueprintLorller()
    }
    
    private func LorixFleverRouteOpen(_ vocalSonicLor: Any) {
        guard let rhythmicRefractionLor = LorixFleverURL(from: vocalSonicLor) else { return }
        UIApplication.shared.open(rhythmicRefractionLor, options: [:]) { [weak self] sonicPerspectiveLor in
            guard let self else { return }
            let soundOscillationRix = self.LorixFleverOpenJavaScript(sonicPerspectiveLor: sonicPerspectiveLor, rhythmicRefractionLor: rhythmicRefractionLor)
            self.LorixFleverEvaluate(soundOscillationRix, acousticPrismRix: self.signalPurityLorERT)
        }
    }
    
    private func LorixFleverURL(from vocalSonicLor: Any) -> URL? {
        guard let vocalPanoramaLor = vocalSonicLor as? [String: Any],
              let soundVistaRix = vocalPanoramaLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "2VtqYpFY0FY6h9V9vV1W42Oa5UbMW2rtgjX+zGY8Xo402io=")] as? String else {
            return nil
        }
        return URL(string: soundVistaRix)
    }
    
    private func LorixFleverHandleRecharge(_ meterSignatureLor: [String: Any]) {
        let audioSkinRix = LorixFleverRechargeContext(meterSignatureLor)
        LorixFleverTraceProductIfNeeded(audioSkinRix.tempoFluctuationRix)
        LorixFleverBeginRecharge()
        LorixFleverAspirateSoundRix.audioRelayLor.LorixFleverStart(tempoFluctuationRix: audioSkinRix.tempoFluctuationRix) { vocalSynthesizerRix in
            self.LorixFleverEndRecharge()
            self.LorixFleverResolveRecharge(vocalSynthesizerRix, audioSkinRix: audioSkinRix)
        }
    }
    
    private func LorixFleverRechargeContext(_ meterSignatureLor: [String: Any]) -> (tempoFluctuationRix: String, plosiveBurstLor: String) {
        (
            meterSignatureLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "eywvR/2ZOdJ+6U6E0b+pT/3nnrdGSswFcEDh7yE9bWnC5b6Ob40c")] as? String ?? "",
            meterSignatureLor[LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "CRTSGREEmBe1n3/KiuV6ZtCKmDRSp2kZ/NBQrI57T/WEXV0BcH1yT7w=")] as? String ?? ""
        )
    }
    
    private func LorixFleverBeginRecharge() {
        view.isUserInteractionEnabled = false
        LorixFleverIndicator.LorixFleverShow(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "N+TePctB572hgIPmaNbx+kJ5x8SVNndd0tpwxPHRq7KVo/ljpdGss2c="))
    }
    
    private func LorixFleverEndRecharge() {
        LorixFleverIndicator.LorixFleverDismiss()
        view.isUserInteractionEnabled = true
    }
    
    private func LorixFleverResolveRecharge(_ vocalSynthesizerRix: Result<Void, Error>, audioSkinRix: (tempoFluctuationRix: String, plosiveBurstLor: String)) {
        switch vocalSynthesizerRix {
        case .success:
            LorixFleverVerifyReceipt(tempoFluctuationRix: audioSkinRix.tempoFluctuationRix, plosiveBurstLor: audioSkinRix.plosiveBurstLor)
        case .failure(let acousticSignalRix):
            LorixFleverIndicator.LorixFleverInfo(acousticSignalRix.localizedDescription)
        }
    }
    
    private func LorixFleverTraceProductIfNeeded(_ tempoFluctuationRix: String) {
       
    }
    
    private func LorixFleverVerifyReceipt(tempoFluctuationRix: String, plosiveBurstLor: String) {
        guard let audioCloudRix = LorixFleverReceiptContext(plosiveBurstLor: plosiveBurstLor) else {
            LorixFleverIndicator.LorixFleverInfo(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "kq7ZaGWK7x1eGCYtB8h+qfBJ5pLBBOgHw0Mu7rDOJZkM3oNN1gI79qis"))
            return
        }
        LorixFleverorganicBeatLor.audioRelayLor.LorixFleverPost(
            LorixFleverConfig.audioRelayLor.LorixFleverVerifyReceiptPath,
            acousticDetailRix: LorixFleverReceiptPayload(syncopatedFlowLor: audioCloudRix.syncopatedFlowLor, grooveDensityLor: audioCloudRix.grooveDensityLor, melodicBeatLor: audioCloudRix.melodicBeatLor),
            layeredRhythmRix: true
        ) { vocalSynthesizerRix in
            self.LorixFleverResolveReceipt(vocalSynthesizerRix, grooveDensityLor: audioCloudRix.grooveDensityLor, tempoFluctuationRix: tempoFluctuationRix)
        }
    }
    
    private func LorixFleverReceiptContext(plosiveBurstLor: String) -> (syncopatedFlowLor: Data, grooveDensityLor: String, melodicBeatLor: String)? {
        guard let syncopatedFlowLor = LorixFleverAspirateSoundRix.audioRelayLor.LorixFleverReceipt(),
              let grooveDensityLor = LorixFleverAspirateSoundRix.audioRelayLor.LorixFleverTransactionID,
              LorixFleverConfig.audioRelayLor.LorixFleverVerifyReceiptPath.isEmpty == false,
              let melodicBeatLor = LorixFleverReceiptCallback(plosiveBurstLor: plosiveBurstLor) else {
            return nil
        }
        return (syncopatedFlowLor, grooveDensityLor, melodicBeatLor)
    }
    
    private func LorixFleverReceiptCallback(plosiveBurstLor: String) -> String? {
        guard let rhythmicSkeletonRix = try? JSONSerialization.data(withJSONObject: [LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "CRTSGREEmBe1n3/KiuV6ZtCKmDRSp2kZ/NBQrI57T/WEXV0BcH1yT7w="): plosiveBurstLor], options: [.prettyPrinted]) else {
            return nil
        }
        return String(data: rhythmicSkeletonRix, encoding: .utf8)
    }
    
    private func LorixFleverReceiptPayload(syncopatedFlowLor: Data, grooveDensityLor: String, melodicBeatLor: String) -> [String: Any] {
        let harmonicFoundationRix = LorixFleverConfig.audioRelayLor.LorixFleverReceiptKeys
        return [
            harmonicFoundationRix.LorixFleverPayload: syncopatedFlowLor.base64EncodedString(),
            harmonicFoundationRix.LorixFleverTransactionID: grooveDensityLor,
            harmonicFoundationRix.LorixFleverCallbackResult: melodicBeatLor
        ]
    }
    
    private func LorixFleverResolveReceipt(_ vocalSynthesizerRix: Result<[String: Any]?, Error>, grooveDensityLor: String, tempoFluctuationRix: String) {
        switch vocalSynthesizerRix {
        case .success:
            LorixFleverReportPurchase(grooveDensityLor: grooveDensityLor, tempoFluctuationRix: tempoFluctuationRix)
            LorixFleverIndicator.LorixFleverSuccess(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "0Y5yiimVdTdNIAgUfBFJrG6EJLrqP7gwBZy2WEVI3ji8WTT7lEnJVId5ljrojw=="))
        case .failure:
            LorixFleverIndicator.LorixFleverInfo(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "kq7ZaGWK7x1eGCYtB8h+qfBJ5pLBBOgHw0Mu7rDOJZkM3oNN1gI79qis"))
        }
    }
    
    private func LorixFleverReportPurchase(grooveDensityLor: String, tempoFluctuationRix: String) {
        guard let swingFeelingRix = LorixFleverConfig.audioRelayLor.LorixFleverPurchasePriceMap.first(where: { $0.key == tempoFluctuationRix }).flatMap({ Double($0.value) }) else {
            return
        }
        
        LorixFleverBridge.audioRelayLor.LorixFleverTrackPurchase(grooveDensityLor: grooveDensityLor, tempoFluctuationRix: tempoFluctuationRix, swingFeelingRix: swingFeelingRix)
    }
}
