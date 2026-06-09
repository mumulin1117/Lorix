import UIKit
import WebKit

final class LorixFleverWebController: UIViewController, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
    private var LorixFleverWebView: WKWebView?
    private var LorixFleverLoadStartTime = Date().timeIntervalSince1970
    private var LorixFleverQuickLoginEnabled: Bool
    private let LorixFleverInitialURL: String
    
    init(urlString: String, quickLoginEnabled: Bool) {
        LorixFleverInitialURL = urlString
        LorixFleverQuickLoginEnabled = quickLoginEnabled
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LorixFleverBuildBackground()
        LorixFleverBuildSmallImage()
        if LorixFleverQuickLoginEnabled {
            LorixFleverBuildDisabledLoginButton()
        }
        LorixFleverBuildWebView()
        LorixFleverIndicator.LorixFleverShow(LorixFleverText.loading)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        let controller = LorixFleverWebView?.configuration.userContentController
        controller?.add(self, name: LorixFleverText.rechargePay)
        controller?.add(self, name: LorixFleverText.close)
        controller?.add(self, name: LorixFleverText.pageLoaded)
        controller?.add(self, name: LorixFleverText.openBrowser)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        LorixFleverWebView?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
    
    deinit {
        LorixFleverWebView?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
    
    private func LorixFleverBuildBackground() {
        let imageView = UIImageView(image: UIImage(named: LorixFleverConfig.shared.LorixFleverMainBackgroundImage))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func LorixFleverBuildSmallImage() {
        guard LorixFleverConfig.shared.LorixFleverSmallImage.isEmpty == false else { return }
        let imageView = UIImageView(image: UIImage(named: LorixFleverConfig.shared.LorixFleverSmallImage))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: LorixFleverConfig.shared.LorixFleverSmallImageSize.width),
            imageView.heightAnchor.constraint(equalToConstant: LorixFleverConfig.shared.LorixFleverSmallImageSize.height),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55 - LorixFleverConfig.shared.LorixFleverLoginButtonSize.height - 30)
        ])
    }
    
    private func LorixFleverBuildDisabledLoginButton() {
        let button = UIButton(type: .system)
        if LorixFleverConfig.shared.LorixFleverLoginButtonImage.isEmpty {
            button.backgroundColor = .white
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
        } else {
            button.setBackgroundImage(UIImage(named: LorixFleverConfig.shared.LorixFleverLoginButtonImage), for: .normal)
        }
        button.setTitleColor(LorixFleverConfig.shared.LorixFleverLoginButtonTextColor, for: .normal)
        button.setTitle(LorixFleverText.quickLogin, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        button.isUserInteractionEnabled = false
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: LorixFleverConfig.shared.LorixFleverLoginButtonSize.width),
            button.heightAnchor.constraint(equalToConstant: LorixFleverConfig.shared.LorixFleverLoginButtonSize.height),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55)
        ])
    }
    
    private func LorixFleverBuildWebView() {
        let config = WKWebViewConfiguration()
        config.allowsAirPlayForMediaPlayback = false
        config.allowsInlineMediaPlayback = true
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        config.mediaTypesRequiringUserActionForPlayback = []
        
        let webView = WKWebView(frame: UIScreen.main.bounds, configuration: config)
        webView.isHidden = true
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.scrollView.alwaysBounceVertical = false
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.navigationDelegate = self
        webView.uiDelegate = self
        webView.allowsBackForwardNavigationGestures = true
        view.addSubview(webView)
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        LorixFleverWebView = webView
        if let url = URL(string: LorixFleverInitialURL) {
            webView.load(URLRequest(url: url))
            LorixFleverLoadStartTime = Date().timeIntervalSince1970
        }
    }
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
    }
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil,
           let url = navigationAction.request.url {
            UIApplication.shared.open(url, options: [:])
        }
        return nil
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let url = navigationAction.request.url,
           let scheme = url.scheme?.lowercased(),
           ["http", "https", "file", "about"].contains(scheme) == false {
            UIApplication.shared.open(url, options: [:]) { [weak webView] success in
                let state = success ? "success" : "failed"
                let js = """
                window.dispatchEvent(new CustomEvent('nativeOpenState', {
                    detail: { state: '\(state)', url: '\(url.absoluteString)' }
                }));
                """
                DispatchQueue.main.async {
                    webView?.evaluateJavaScript(js, completionHandler: nil)
                }
            }
            decisionHandler(.cancel)
            return
        }
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        LorixFleverWebView?.isHidden = false
        LorixFleverIndicator.LorixFleverDismiss()
        LorixFleverQuickLoginEnabled = false
        guard LorixFleverConfig.shared.LorixFleverReportTimePath.isEmpty == false else { return }
        let params: [String: Any] = [
            LorixFleverConfig.shared.LorixFleverReportTimeKey: "\(Int(Date().timeIntervalSince1970 * 1000 - LorixFleverLoadStartTime * 1000))"
        ]
        LorixFleverNetwork.shared.LorixFleverPost(LorixFleverConfig.shared.LorixFleverReportTimePath, params: params)
    }
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == LorixFleverText.rechargePay,
           let payload = message.body as? [String: Any] {
            LorixFleverHandleRecharge(payload)
            return
        }
        
        if message.name == LorixFleverText.close {
            UserDefaults.standard.removeObject(forKey: LorixFleverStorageKey.userToken)
            LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
            return
        }
        
        if message.name == LorixFleverText.pageLoaded {
            LorixFleverWebView?.isHidden = false
            LorixFleverIndicator.LorixFleverDismiss()
            return
        }
        
        if message.name == LorixFleverText.openBrowser,
           let body = message.body as? [String: Any],
           let urlString = body[LorixFleverText.url] as? String,
           let url = URL(string: urlString) {
            UIApplication.shared.open(url, options: [:]) { [weak self] success in
                let state = success ? "success" : "failed"
                let js = """
                window.dispatchEvent(new CustomEvent('nativeOpenState', {
                    detail: { state: '\(state)', url: '\(url.absoluteString)' }
                }));
                """
                DispatchQueue.main.async {
                    self?.LorixFleverWebView?.evaluateJavaScript(js, completionHandler: nil)
                }
            }
        }
    }
    
    private func LorixFleverHandleRecharge(_ payload: [String: Any]) {
        let productID = payload[LorixFleverText.batchNo] as? String ?? ""
        let orderCode = payload[LorixFleverText.orderCode] as? String ?? ""
        view.isUserInteractionEnabled = false
        LorixFleverIndicator.LorixFleverShow(LorixFleverText.paying)
        
        LorixFleverPurchaseManager.shared.LorixFleverStart(productID: productID) { result in
            LorixFleverIndicator.LorixFleverDismiss()
            self.view.isUserInteractionEnabled = true
            switch result {
            case .success:
                self.LorixFleverVerifyReceipt(productID: productID, orderCode: orderCode)
            case .failure(let error):
                LorixFleverIndicator.LorixFleverInfo(error.localizedDescription)
            }
        }
    }
    
    private func LorixFleverVerifyReceipt(productID: String, orderCode: String) {
        guard let receipt = LorixFleverPurchaseManager.shared.LorixFleverReceipt(),
              let transactionID = LorixFleverPurchaseManager.shared.LorixFleverTransactionID,
              LorixFleverConfig.shared.LorixFleverVerifyReceiptPath.isEmpty == false else {
            LorixFleverIndicator.LorixFleverInfo(LorixFleverText.payFailed)
            return
        }
        
        guard let orderData = try? JSONSerialization.data(withJSONObject: [LorixFleverText.orderCode: orderCode], options: [.prettyPrinted]),
              let orderJSONString = String(data: orderData, encoding: .utf8) else {
            LorixFleverIndicator.LorixFleverInfo(LorixFleverText.payFailed)
            return
        }
        
        let keys = LorixFleverConfig.shared.LorixFleverReceiptKeys
        LorixFleverNetwork.shared.LorixFleverPost(
            LorixFleverConfig.shared.LorixFleverVerifyReceiptPath,
            params: [
                keys.LorixFleverPayload: receipt.base64EncodedString(),
                keys.LorixFleverTransactionID: transactionID,
                keys.LorixFleverCallbackResult: orderJSONString
            ],
            paymentFlow: true
        ) { result in
            switch result {
            case .success:
                self.LorixFleverReportPurchase(transactionID: transactionID, productID: productID)
                LorixFleverIndicator.LorixFleverSuccess(LorixFleverText.paySuccess)
            case .failure:
                LorixFleverIndicator.LorixFleverInfo(LorixFleverText.payFailed)
            }
        }
    }
    
    private func LorixFleverReportPurchase(transactionID: String, productID: String) {
        guard let price = LorixFleverConfig.shared.LorixFleverPurchasePriceMap.first(where: { $0.key == productID }).flatMap({ Double($0.value) }) else {
            return
        }
        
        LorixFleverBridge.shared.LorixFleverTrackPurchase(transactionID: transactionID, productID: productID, price: price)
    }
}
