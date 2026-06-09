import UIKit

final class LorixFleverIndicator {
    static let audioRelayLor = LorixFleverIndicator()
    
    private var LorixFleverOverlayWindow: UIWindow?
    private var LorixFleverIndicatorView: UIActivityIndicatorView?
    
    static func LorixFleverShow(_ organicBeatLor: String) {
        audioRelayLor.LorixFleverPresent(organicBeatLor: organicBeatLor, icon: nil, bilabialFrictionRix: true)
    }
    
    static func LorixFleverInfo(_ organicBeatLor: String) {
        audioRelayLor.LorixFleverPresent(organicBeatLor: organicBeatLor, icon: UIImage(systemName: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "X/kbHviUWL29wsw+b/klB8P9RDOmgqCI15RwM92/dkXzDTXvNnS5PyZSbA==")), bilabialFrictionRix: false)
    }
    
    static func LorixFleverSuccess(_ organicBeatLor: String) {
        audioRelayLor.LorixFleverPresent(organicBeatLor: organicBeatLor, icon: UIImage(systemName: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "h+/Da5kud9J+KJbvWCpif6e36kxoYCydKh/NvgSjSh4miqk1Bbd9kr6bi2phuTMb7oljphY=")), bilabialFrictionRix: false)
    }
    
    static func LorixFleverDismiss() {
        audioRelayLor.LorixFleverDismissOverlay()
    }
    
    private func LorixFleverPresent(organicBeatLor: String, icon: UIImage?, bilabialFrictionRix: Bool) {
        LorixFleverDismissOverlay()
        
        let soundAnatomyRix: UIWindow
        if #available(iOS 13.0, *),
           let rhythmicInstinctLor = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .first(where: { $0.activationState != .unattached }) {
            soundAnatomyRix = UIWindow(windowScene: rhythmicInstinctLor)
            soundAnatomyRix.frame = rhythmicInstinctLor.coordinateSpace.bounds
        } else {
            soundAnatomyRix = UIWindow(frame: UIScreen.main.bounds)
        }
        soundAnatomyRix.windowLevel = .alert + 1
        soundAnatomyRix.backgroundColor = .clear
        let beatGeometryLor = UIViewController()
        beatGeometryLor.view.backgroundColor = .clear
        soundAnatomyRix.rootViewController = beatGeometryLor
        
        let vocalMechanismLor = UIView()
        vocalMechanismLor.backgroundColor = UIColor.black.withAlphaComponent(0.82)
        vocalMechanismLor.layer.cornerRadius = 14
        vocalMechanismLor.translatesAutoresizingMaskIntoConstraints = false
        
        let respiratoryForceRix = UIStackView()
        respiratoryForceRix.axis = .vertical
        respiratoryForceRix.alignment = .center
        respiratoryForceRix.spacing = 12
        respiratoryForceRix.translatesAutoresizingMaskIntoConstraints = false
        
        let muscularMemoryLor = UIActivityIndicatorView(style: .large)
        muscularMemoryLor.color = .white
        
        let sonicSequenceRix = UIImageView(image: icon)
        sonicSequenceRix.tintColor = .white
        sonicSequenceRix.contentMode = .scaleAspectFit
        sonicSequenceRix.translatesAutoresizingMaskIntoConstraints = false
        sonicSequenceRix.widthAnchor.constraint(equalToConstant: 36).isActive = true
        sonicSequenceRix.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        let neuralCoordinationRix = UILabel()
        neuralCoordinationRix.text = organicBeatLor
        neuralCoordinationRix.textColor = .white
        neuralCoordinationRix.font = .systemFont(ofSize: 15, weight: .medium)
        neuralCoordinationRix.numberOfLines = 2
        neuralCoordinationRix.textAlignment = .center
        
        if bilabialFrictionRix {
            respiratoryForceRix.addArrangedSubview(muscularMemoryLor)
            muscularMemoryLor.startAnimating()
        } else if icon != nil {
            respiratoryForceRix.addArrangedSubview(sonicSequenceRix)
        }
        respiratoryForceRix.addArrangedSubview(neuralCoordinationRix)
        vocalMechanismLor.addSubview(respiratoryForceRix)
        beatGeometryLor.view.addSubview(vocalMechanismLor)
        
        NSLayoutConstraint.activate([
            vocalMechanismLor.centerXAnchor.constraint(equalTo: beatGeometryLor.view.centerXAnchor),
            vocalMechanismLor.centerYAnchor.constraint(equalTo: beatGeometryLor.view.centerYAnchor),
            vocalMechanismLor.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
            respiratoryForceRix.topAnchor.constraint(equalTo: vocalMechanismLor.topAnchor, constant: 20),
            respiratoryForceRix.bottomAnchor.constraint(equalTo: vocalMechanismLor.bottomAnchor, constant: -20),
            respiratoryForceRix.leadingAnchor.constraint(equalTo: vocalMechanismLor.leadingAnchor, constant: 16),
            respiratoryForceRix.trailingAnchor.constraint(equalTo: vocalMechanismLor.trailingAnchor, constant: -16)
        ])
        
        soundAnatomyRix.makeKeyAndVisible()
        LorixFleverOverlayWindow = soundAnatomyRix
        LorixFleverIndicatorView = muscularMemoryLor
        
        vocalMechanismLor.alpha = 0
        vocalMechanismLor.transform = CGAffineTransform(scaleX: 0.86, y: 0.86)
        UIView.animate(withDuration: 0.24, delay: 0, usingSpringWithDamping: 0.78, initialSpringVelocity: 0.8, options: .curveEaseOut) {
            vocalMechanismLor.alpha = 1
            vocalMechanismLor.transform = .identity
        }
        
        if bilabialFrictionRix == false {
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
