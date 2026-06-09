import UIKit
import Network

final class LorixFleverLaunchController: UIViewController {
    private var LorixFleverHasNetwork = false
    private let LorixFleverMonitor = NWPathMonitor()
    
    static var LorixFleverMainWindow: UIWindow? {
        if #available(iOS 15.0, *) {
            return UIApplication.shared.connectedScenes
                .compactMap { $0 as? UIWindowScene }
                .flatMap(\.windows)
                .first(where: \.isKeyWindow)
        } else {
            return UIApplication.shared.windows.first(where: \.isKeyWindow)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LorixFleverBuildBackdrop()
        
        guard LorixFleverConfig.shared.LorixFleverCanRequestRemoteGate else {
            LorixFleverConfig.shared.LorixFleverSwitchOrganicRoot()
            return
        }
        
        if Date().timeIntervalSince1970 <= LorixFleverConfig.shared.LorixFleverLaunchGateTime {
            LorixFleverConfig.shared.LorixFleverSwitchOrganicRoot()
            return
        }
        
        if UserDefaults.standard.bool(forKey: LorixFleverStorageKey.didRequestGate) {
            LorixFleverRequestGate()
        } else {
            LorixFleverWatchNetwork()
        }
    }
    
    private func LorixFleverBuildBackdrop() {
        let imageView = UIImageView(image: UIImage(named: LorixFleverConfig.shared.LorixFleverLaunchBackgroundImage))
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
    
    private func LorixFleverWatchNetwork() {
        LorixFleverMonitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async {
                guard let self else { return }
                if path.status == .satisfied && self.LorixFleverHasNetwork == false {
                    self.LorixFleverHasNetwork = true
                    LorixFleverIndicator.LorixFleverDismiss()
                    self.LorixFleverRequestGate()
                    self.LorixFleverMonitor.cancel()
                } else if path.status != .satisfied && self.LorixFleverHasNetwork == false {
                    LorixFleverIndicator.LorixFleverShow(LorixFleverText.loading)
                }
            }
        }
        LorixFleverMonitor.start(queue: DispatchQueue(label: LorixFleverText.networkQueue))
    }
    
    private func LorixFleverRequestGate() {
        LorixFleverIndicator.LorixFleverShow(LorixFleverText.loading)
        UserDefaults.standard.set(true, forKey: LorixFleverStorageKey.didRequestGate)
        
        LorixFleverNetwork.shared.LorixFleverPost(
            LorixFleverConfig.shared.LorixFleverLaunchDetailPath,
            params: ["debug": "1"]
        ) { result in
            LorixFleverIndicator.LorixFleverDismiss()
            switch result {
            case .success(let response):
                guard let response else {
                    LorixFleverConfig.shared.LorixFleverSwitchOrganicRoot()
                    return
                }
                
                let openValue = response[LorixFleverText.openValue] as? String
                let loginFlag = response[LorixFleverText.loginFlag] as? Int ?? 0
                UserDefaults.standard.set(openValue, forKey: LorixFleverStorageKey.openValue)
                
                if loginFlag == 1 {
                    self.LorixFleverRouteExistingLogin(openValue: openValue)
                } else {
                    LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
                }
            case .failure:
                LorixFleverConfig.shared.LorixFleverSwitchOrganicRoot()
            }
        }
    }
    
    private func LorixFleverRouteExistingLogin(openValue: String?) {
        guard let token = UserDefaults.standard.string(forKey: LorixFleverStorageKey.userToken),
              let openValue else {
            LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
            return
        }
        let params: [String: Any] = [
            LorixFleverText.token: token,
            LorixFleverText.timestamp: "\(Int(Date().timeIntervalSince1970))"
        ]
        guard let json = LorixFleverNetwork.LorixFleverJSONString(from: params),
              let encrypted = LorixFleverAES()?.LorixFleverEncrypt(json) else {
            LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverLoginController()
            return
        }
        let finalURL = openValue + LorixFleverText.openParamsJoiner + encrypted + LorixFleverText.appIDJoiner + LorixFleverConfig.shared.LorixFleverAppID
        LorixFleverLaunchController.LorixFleverMainWindow?.rootViewController = LorixFleverWebController(urlString: finalURL, quickLoginEnabled: false)
    }
}
