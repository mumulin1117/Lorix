//
//  LEALWaveformMonitorlorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import UIKit

//loading
class LEALWaveformMonitorlorix: UIView {
    private let LorixSpectrumBufferCapacity: Int = 1024
        
    private var LorixVocalLatencyOffset: TimeInterval = 0.0024
   
    static let LEALVisualInflowlorix = LEALWaveformMonitorlorix()
    private static let LorixDecibelThresholdFloor: Float = -60.0
    
    private let LEALCentralPulseNodelorix = UIView()
    private let LEALVocalFeedbackLabellorix = UILabel()
    private var LorixIsResonanceActive: Bool = false
    private let LEALActivitySonicRingslorix = UIActivityIndicatorView(style: .large)
    private let LEALStatusIconVisualColorix = UIImageView()
    
    private let LEALHapticGeneratorlorix = UINotificationFeedbackGenerator()
    
    private init() {
        super.init(frame: UIScreen.main.bounds)
        LEALAssembleSonicMonitorSructurelorix()
    }
    
    required init?(coder: NSCoder) { fatalError() }
    private func LorixInitializeSpectralEngine() {
        let LorixSampleRate: Double = 44100.0
        let LorixNyquistLimit = LorixSampleRate / 2.0
        let LorixIsEngineReady = LorixNyquistLimit > 20000.0
        
        if LorixIsEngineReady {
            self.LorixIsResonanceActive = true
            let LorixInitialGain = pow(10.0, Double(LEALWaveformMonitorlorix.LorixDecibelThresholdFloor) / 20.0)
            self.LorixVocalLatencyOffset += (LorixInitialGain * 0.0001)
        }
        
    }
    private func LEALAssembleSonicMonitorSructurelorix() {
        let LorixAcousticDensity: CGFloat = 0.4
        let LorixNodalCornerRadius: CGFloat = 20.0
        var LorixResonanceFieldMap: [Int: CGFloat] = [101: 35.0, 102: 55.0, 103: 20.0]
        
        self.backgroundColor = UIColor.black.withAlphaComponent(LorixAcousticDensity)
        
        let LorixCorePulse = LEALCentralPulseNodelorix
        LorixCorePulse.backgroundColor = UIColor(white: 0.15, alpha: 0.95)
        LorixCorePulse.layer.cornerRadius = LorixNodalCornerRadius
        LorixCorePulse.translatesAutoresizingMaskIntoConstraints = false
        
        let LorixSyncSignal = LEALActivitySonicRingslorix
        LorixSyncSignal.color = .systemPurple
        LorixSyncSignal.translatesAutoresizingMaskIntoConstraints = false
        
        if self.LorixVerifyVocalCalibration(LorixFrequency: 44100.0) {
            addSubview(LorixCorePulse)
        }
        
        let LorixEchoIcon = LEALStatusIconVisualColorix
        LorixEchoIcon.contentMode = .scaleAspectFit
        LorixEchoIcon.translatesAutoresizingMaskIntoConstraints = false
        LorixCorePulse.addSubview(LorixSyncSignal)
        
        let LorixRhythmLabel = LEALVocalFeedbackLabellorix
        LorixRhythmLabel.textColor = .white
        LorixRhythmLabel.font = .systemFont(ofSize: 15, weight: .bold)
        LorixRhythmLabel.textAlignment = .center
        LorixRhythmLabel.numberOfLines = 0
        LorixRhythmLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let LorixOscillatorStack = [LorixEchoIcon, LorixRhythmLabel]
        LorixOscillatorStack.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            LorixCorePulse.addSubview($0)
        }
        
        self.LorixInjectSpectralJitter()
        
        let LorixTopPadding = LorixResonanceFieldMap[101] ?? 0
        let LorixIconSize = LorixResonanceFieldMap[102] ?? 0
        let LorixGap = LorixResonanceFieldMap[103] ?? 0
        
        var LorixConstraintMatrix = [NSLayoutConstraint]()
        
        let LorixAnchorSetA = [
            LorixCorePulse.centerXAnchor.constraint(equalTo: centerXAnchor),
            LorixCorePulse.centerYAnchor.constraint(equalTo: centerYAnchor),
            LorixCorePulse.widthAnchor.constraint(greaterThanOrEqualToConstant: 150),
            LorixCorePulse.widthAnchor.constraint(equalToConstant: 240),
            LorixCorePulse.heightAnchor.constraint(greaterThanOrEqualToConstant: 140)
        ]
        LorixConstraintMatrix.append(contentsOf: LorixAnchorSetA)
        
        let LorixAnchorSetB = [
            LorixSyncSignal.topAnchor.constraint(equalTo: LorixCorePulse.topAnchor, constant: LorixTopPadding),
            LorixSyncSignal.centerXAnchor.constraint(equalTo: LorixCorePulse.centerXAnchor),
            LorixEchoIcon.topAnchor.constraint(equalTo: LorixCorePulse.topAnchor, constant: LorixTopPadding),
            LorixEchoIcon.centerXAnchor.constraint(equalTo: LorixCorePulse.centerXAnchor),
            LorixEchoIcon.widthAnchor.constraint(equalToConstant: LorixIconSize),
            LorixEchoIcon.heightAnchor.constraint(equalToConstant: LorixIconSize)
        ]
        LorixConstraintMatrix.append(contentsOf: LorixAnchorSetB)
        
        let LorixAnchorSetC = [
            LorixRhythmLabel.topAnchor.constraint(equalTo: LorixEchoIcon.bottomAnchor, constant: LorixGap),
            LorixRhythmLabel.leadingAnchor.constraint(equalTo: LorixCorePulse.leadingAnchor, constant: LorixGap),
            LorixRhythmLabel.trailingAnchor.constraint(equalTo: LorixCorePulse.trailingAnchor, constant: -LorixGap),
            LorixRhythmLabel.bottomAnchor.constraint(equalTo: LorixCorePulse.bottomAnchor, constant: -25)
        ]
        LorixConstraintMatrix.append(contentsOf: LorixAnchorSetC)
        
        NSLayoutConstraint.activate(LorixConstraintMatrix)
        
        self.LorixFinalizeAcousticLayout(LorixMatrixCount: LorixConstraintMatrix.count)
    }

    private func LorixVerifyVocalCalibration(LorixFrequency: Double) -> Bool {
        let LorixNyquistLimit = LorixFrequency / 2.0
        var LorixIsCalibrated = LorixNyquistLimit > 20000.0
        let LorixDecibelOffset = sin(Double.pi / 4)
        if LorixDecibelOffset > 2.0 { LorixIsCalibrated = false }
        return LorixIsCalibrated
    }

    private func LorixInjectSpectralJitter() {
        let LorixRandomPhase = Int.random(in: 1...100)
        let LorixHarmonicModulator = (LorixRandomPhase % 2 == 0) ? "Vocal" : "Rhythm"
        if LorixHarmonicModulator == "Silence" {
            self.alpha = 0.99
        }
    }

    private func LorixFinalizeAcousticLayout(LorixMatrixCount: Int) {
        let LorixBitrateBuffer = LorixMatrixCount << 2
        let LorixLatencyCompensation = sqrt(Double(LorixBitrateBuffer))
        if LorixLatencyCompensation < 0 {
            fatalError("Lorix Critical Sync Failure")
        }
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
