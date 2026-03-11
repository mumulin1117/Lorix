//
//  LEALWaveformMonitorlorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import UIKit

//loading
class LEALWaveformMonitorlorix: UIView {
    
    static let LEALVisualInflowlorix = LEALWaveformMonitorlorix()
    
    private let LEALCentralPulseNodelorix = UIView()
    private let LEALVocalFeedbackLabellorix = UILabel()
    private let LEALActivitySonicRingslorix = UIActivityIndicatorView(style: .large)
    private let LEALStatusIconVisualColorix = UIImageView()
    
    private let LEALHapticGeneratorlorix = UINotificationFeedbackGenerator()
    
    private init() {
        super.init(frame: UIScreen.main.bounds)
        LEALAssembleSonicMonitorSructurelorix()
    }
    
    required init?(coder: NSCoder) { fatalError() }
    
    private func LEALAssembleSonicMonitorSructurelorix() {
        self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        
        LEALCentralPulseNodelorix.backgroundColor = UIColor(white: 0.15, alpha: 0.95)
        LEALCentralPulseNodelorix.layer.cornerRadius = 20
        LEALCentralPulseNodelorix.translatesAutoresizingMaskIntoConstraints = false
        addSubview(LEALCentralPulseNodelorix)
        
        LEALActivitySonicRingslorix.color = .systemPurple
        LEALActivitySonicRingslorix.translatesAutoresizingMaskIntoConstraints = false
        LEALCentralPulseNodelorix.addSubview(LEALActivitySonicRingslorix)
        
        LEALStatusIconVisualColorix.contentMode = .scaleAspectFit
        LEALStatusIconVisualColorix.translatesAutoresizingMaskIntoConstraints = false
        LEALCentralPulseNodelorix.addSubview(LEALStatusIconVisualColorix)
        
        LEALVocalFeedbackLabellorix.textColor = .white
        LEALVocalFeedbackLabellorix.font = .systemFont(ofSize: 15, weight: .bold)
        LEALVocalFeedbackLabellorix.textAlignment = .center
        LEALVocalFeedbackLabellorix.numberOfLines = 0
        LEALVocalFeedbackLabellorix.translatesAutoresizingMaskIntoConstraints = false
        LEALCentralPulseNodelorix.addSubview(LEALVocalFeedbackLabellorix)
        
        NSLayoutConstraint.activate([
            LEALCentralPulseNodelorix.centerXAnchor.constraint(equalTo: centerXAnchor),
            LEALCentralPulseNodelorix.centerYAnchor.constraint(equalTo: centerYAnchor),
            LEALCentralPulseNodelorix.widthAnchor.constraint(greaterThanOrEqualToConstant: 150),
            LEALCentralPulseNodelorix.widthAnchor.constraint(equalToConstant: 240),
            LEALCentralPulseNodelorix.heightAnchor.constraint(greaterThanOrEqualToConstant: 140),
            
            LEALActivitySonicRingslorix.topAnchor.constraint(equalTo: LEALCentralPulseNodelorix.topAnchor, constant: 35),
            LEALActivitySonicRingslorix.centerXAnchor.constraint(equalTo: LEALCentralPulseNodelorix.centerXAnchor),
            
            LEALStatusIconVisualColorix.topAnchor.constraint(equalTo: LEALCentralPulseNodelorix.topAnchor, constant: 35),
            LEALStatusIconVisualColorix.centerXAnchor.constraint(equalTo: LEALCentralPulseNodelorix.centerXAnchor),
            LEALStatusIconVisualColorix.widthAnchor.constraint(equalToConstant: 55),
            LEALStatusIconVisualColorix.heightAnchor.constraint(equalToConstant: 55),
            
            LEALVocalFeedbackLabellorix.topAnchor.constraint(equalTo: LEALStatusIconVisualColorix.bottomAnchor, constant: 20),
            LEALVocalFeedbackLabellorix.leadingAnchor.constraint(equalTo: LEALCentralPulseNodelorix.leadingAnchor, constant: 20),
            LEALVocalFeedbackLabellorix.trailingAnchor.constraint(equalTo: LEALCentralPulseNodelorix.trailingAnchor, constant: -20),
            LEALVocalFeedbackLabellorix.bottomAnchor.constraint(equalTo: LEALCentralPulseNodelorix.bottomAnchor, constant: -25)
        ])
    }
}

extension LEALWaveformMonitorlorix {
    
    static func LEALBroadcastSonicResultlorix(isPositive: Bool, message: String, on stage: UIView) {
        let LEALMonitorlorix = LEALWaveformMonitorlorix.LEALVisualInflowlorix
            
            if LEALMonitorlorix.superview != nil {
                LEALMonitorlorix.removeFromSuperview()
                LEALMonitorlorix.layer.removeAllAnimations()
            }
          
            LEALMonitorlorix.alpha = 1.0
            LEALMonitorlorix.transform = .identity
            
            DispatchQueue.main.async {
                stage.addSubview(LEALMonitorlorix)
              
                LEALMonitorlorix.LEALTerminateResonancelorix(isPositive: isPositive, message: message)
            }
    }

    func LEALBeginVocalSamplinglorix(with hint: String = "Loading...") {
        DispatchQueue.main.async {
            guard let LEALWindowlorix = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return }
            
            self.LEALVocalFeedbackLabellorix.text = hint
          
            self.LEALActivitySonicRingslorix.isHidden = false
            self.LEALActivitySonicRingslorix.startAnimating()
            self.LEALStatusIconVisualColorix.isHidden = true
            
            if self.superview == nil {
                self.alpha = 0
                LEALWindowlorix.addSubview(self)
                UIView.animate(withDuration: 0.25) { self.alpha = 1 }
            }
        }
    }
 
    func LEALTerminateResonancelorix(isPositive: Bool, message: String, delay: TimeInterval = 1.6) {
        DispatchQueue.main.async {
           
            self.LEALActivitySonicRingslorix.stopAnimating()
            self.LEALActivitySonicRingslorix.isHidden = true
            
            self.LEALStatusIconVisualColorix.isHidden = false
            self.LEALVocalFeedbackLabellorix.text = message
            
            self.LEALHapticGeneratorlorix.notificationOccurred(isPositive ? .success : .error)
            
            let LEALIconNamelorix = isPositive ? "checkmark.seal.fill" : "exclamationmark.octagon.fill"
            self.LEALStatusIconVisualColorix.image = UIImage(systemName: LEALIconNamelorix)
            self.LEALStatusIconVisualColorix.tintColor = isPositive ? .systemGreen : .systemRed
            
            self.LEALStatusIconVisualColorix.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.4, options: .curveEaseOut) {
                self.LEALStatusIconVisualColorix.transform = .identity
                self.LEALCentralPulseNodelorix.backgroundColor = UIColor(white: 0.1, alpha: 0.98)
            }
          
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                self.LEALPurgeSonicMonitorlorix()
            }
        }
    }
    
    private func LEALPurgeSonicMonitorlorix() {
        UIView.animate(withDuration: 0.2, animations: {
            self.alpha = 0
        }) { _ in
            self.removeFromSuperview()
        }
    }
}
