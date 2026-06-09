import UIKit

final class LorixFleverIndicator {
    static let shared = LorixFleverIndicator()
    
    private var LorixFleverOverlayWindow: UIWindow?
    private var LorixFleverIndicatorView: UIActivityIndicatorView?
    
    static func LorixFleverShow(_ message: String) {
        shared.LorixFleverPresent(message: message, icon: nil, loading: true)
    }
    
    static func LorixFleverInfo(_ message: String) {
        shared.LorixFleverPresent(message: message, icon: UIImage(systemName: LorixFleverText.infoIcon), loading: false)
    }
    
    static func LorixFleverSuccess(_ message: String) {
        shared.LorixFleverPresent(message: message, icon: UIImage(systemName: LorixFleverText.successIcon), loading: false)
    }
    
    static func LorixFleverDismiss() {
        shared.LorixFleverDismissOverlay()
    }
    
    private func LorixFleverPresent(message: String, icon: UIImage?, loading: Bool) {
        LorixFleverDismissOverlay()
        
        let overlay: UIWindow
        if #available(iOS 13.0, *),
           let scene = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .first(where: { $0.activationState != .unattached }) {
            overlay = UIWindow(windowScene: scene)
            overlay.frame = scene.coordinateSpace.bounds
        } else {
            overlay = UIWindow(frame: UIScreen.main.bounds)
        }
        overlay.windowLevel = .alert + 1
        overlay.backgroundColor = .clear
        let host = UIViewController()
        host.view.backgroundColor = .clear
        overlay.rootViewController = host
        
        let container = UIView()
        container.backgroundColor = UIColor.black.withAlphaComponent(0.82)
        container.layer.cornerRadius = 14
        container.translatesAutoresizingMaskIntoConstraints = false
        
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.color = .white
        
        let imageView = UIImageView(image: icon)
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        let label = UILabel()
        label.text = message
        label.textColor = .white
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.numberOfLines = 2
        label.textAlignment = .center
        
        if loading {
            stack.addArrangedSubview(spinner)
            spinner.startAnimating()
        } else if icon != nil {
            stack.addArrangedSubview(imageView)
        }
        stack.addArrangedSubview(label)
        container.addSubview(stack)
        host.view.addSubview(container)
        
        NSLayoutConstraint.activate([
            container.centerXAnchor.constraint(equalTo: host.view.centerXAnchor),
            container.centerYAnchor.constraint(equalTo: host.view.centerYAnchor),
            container.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
            stack.topAnchor.constraint(equalTo: container.topAnchor, constant: 20),
            stack.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -20),
            stack.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -16)
        ])
        
        overlay.makeKeyAndVisible()
        LorixFleverOverlayWindow = overlay
        LorixFleverIndicatorView = spinner
        
        container.alpha = 0
        container.transform = CGAffineTransform(scaleX: 0.86, y: 0.86)
        UIView.animate(withDuration: 0.24, delay: 0, usingSpringWithDamping: 0.78, initialSpringVelocity: 0.8, options: .curveEaseOut) {
            container.alpha = 1
            container.transform = .identity
        }
        
        if loading == false {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
                self?.LorixFleverDismissOverlay()
            }
        }
    }
    
    private func LorixFleverDismissOverlay() {
        LorixFleverOverlayWindow?.isHidden = true
        LorixFleverOverlayWindow = nil
        LorixFleverIndicatorView?.stopAnimating()
        LorixFleverIndicatorView = nil
    }
}
