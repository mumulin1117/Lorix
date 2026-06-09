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
    
    private func LorixFleverBuildLoginButton() {
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
        button.addTarget(self, action: #selector(LorixFleverLoginTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: LorixFleverConfig.shared.LorixFleverLoginButtonSize.width),
            button.heightAnchor.constraint(equalToConstant: LorixFleverConfig.shared.LorixFleverLoginButtonSize.height),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -55)
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
    
    private func LorixFleverPreloadWeb() {
        let config = WKWebViewConfiguration()
        config.allowsAirPlayForMediaPlayback = false
        config.allowsInlineMediaPlayback = true
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        config.mediaTypesRequiringUserActionForPlayback = []
        let webView = WKWebView(frame: UIScreen.main.bounds, configuration: config)
        webView.isHidden = true
        webView.scrollView.alwaysBounceVertical = false
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        view.addSubview(webView)
        if let value = UserDefaults.standard.string(forKey: LorixFleverStorageKey.openValue),
           let url = URL(string: value) {
            webView.load(URLRequest(url: url))
        }
    }
    
    @objc private func LorixFleverLoginTapped(_ button: UIButton) {
        button.isUserInteractionEnabled = false
        LorixFleverIndicator.LorixFleverShow(LorixFleverText.loading)
        
        var params: [String: Any] = [:]
        params[LorixFleverConfig.shared.LorixFleverLoginKeys.LorixFleverDeviceID] = LorixFleverVault.LorixFleverDeviceID()
        params[LorixFleverConfig.shared.LorixFleverLoginKeys.LorixFleverAdjustID] = LorixFleverConfig.shared.LorixFleverAdjustID
        if let password = LorixFleverVault.LorixFleverPassword() {
            params[LorixFleverConfig.shared.LorixFleverLoginKeys.LorixFleverPassword] = password
        }
        
        LorixFleverNetwork.shared.LorixFleverPost(LorixFleverConfig.shared.LorixFleverLoginPath, params: params) { result in
            button.isUserInteractionEnabled = true
            LorixFleverIndicator.LorixFleverDismiss()
            switch result {
            case .success(let response):
                guard let response,
                      let token = response[LorixFleverText.token] as? String,
                      let openValue = UserDefaults.standard.string(forKey: LorixFleverStorageKey.openValue) else {
                    LorixFleverIndicator.LorixFleverInfo(LorixFleverText.invalidLogin)
                    return
                }
                if let password = response[LorixFleverText.password] as? String {
                    LorixFleverVault.LorixFleverSavePassword(password)
                }
                UserDefaults.standard.set(token, forKey: LorixFleverStorageKey.userToken)
                self.LorixFleverOpenWeb(token: token, openValue: openValue)
            case .failure(let error):
                LorixFleverIndicator.LorixFleverInfo(error.localizedDescription)
            }
        }
    }
    
    private func LorixFleverOpenWeb(token: String, openValue: String) {
        let secureParams: [String: Any] = [
            LorixFleverText.token: token,
            LorixFleverText.timestamp: "\(Int(Date().timeIntervalSince1970))"
        ]
        guard let json = LorixFleverNetwork.LorixFleverJSONString(from: secureParams),
              let encrypted = LorixFleverAES()?.LorixFleverEncrypt(json) else {
            return
        }
        let finalURL = openValue + LorixFleverText.openParamsJoiner + encrypted + LorixFleverText.appIDJoiner + LorixFleverConfig.shared.LorixFleverAppID
        LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverWebController(urlString: finalURL, quickLoginEnabled: true)
    }
}
