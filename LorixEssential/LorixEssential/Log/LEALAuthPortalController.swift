//
//  LEALAuthPortalController.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/6.
//

import UIKit

class LEALAuthPortalController: UIViewController {
    
    private let LEALHeaderAcousticIcon = UIImageView()
     
    private let LEALEmailTitleLabel = UILabel()
    private let LEALEmailInputContainer = UIView()
    private let LEALEmailIcon = UIImageView()
    private let LEALEmailInputField = UITextField()
    
    private let LEALPassTitleLabel = UILabel()
    private let LEALPassInputContainer = UIView()
    private let LEALPassIcon = UIImageView()
    private let LEALPassInputField = UITextField()
    lazy var LEALinuting: UILabel = {
        let LEALPassTitleLabel = UILabel()
        LEALPassTitleLabel.text = "If no account,we will  create one for you automiclly!"
        LEALPassTitleLabel.textColor = .white
        LEALPassTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        LEALPassTitleLabel.font = .systemFont(ofSize: 12)
        return LEALPassTitleLabel
    }()
    private let LEALLoginTriggerBtn = UIButton()
    
    private let LEALLegalFooterStack = UIStackView()
    private let LEALAgreementToggle = UIButton()
    private let LEALPrivacyLinkBtn = UIButton()
    private let LEALTermsLinkBtn = UIButton()
    
    private let LEALeartTitleLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        LEALAssembleSonicInterface()
    }
    
    private func LEALAssembleSonicInterface() {
        
     
        
        view.backgroundColor = UIColor(red: 0.02, green: 0.02, blue: 0.08, alpha: 1.0)
        
        LEALHeaderAcousticIcon.image = UIImage(named: "mowertDribbble") // Asset matching your design
        LEALHeaderAcousticIcon.contentMode = .scaleAspectFill
        LEALHeaderAcousticIcon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALHeaderAcousticIcon)
        
        LEALeartTitleLabel.text = "By continuing you agree to our"
        LEALeartTitleLabel.textColor = .white
        LEALeartTitleLabel.font = .systemFont(ofSize: 13)
        LEALEmailTitleLabel.text = "Email"
        LEALEmailTitleLabel.textColor = .lightGray
        LEALEmailTitleLabel.font = .systemFont(ofSize: 16)
        LEALEmailTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALEmailTitleLabel)
        
        LEALEmailInputContainer.backgroundColor = UIColor(white: 1.0, alpha: 0.1)
        LEALEmailInputContainer.layer.cornerRadius = 30
        LEALEmailInputContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALEmailInputContainer)
        
        LEALEmailIcon.image = UIImage(named: "envelopeentile")
        LEALEmailIcon.translatesAutoresizingMaskIntoConstraints = false
        LEALEmailInputContainer.addSubview(LEALEmailIcon)
        
        LEALEmailInputField.attributedPlaceholder = NSAttributedString(string: "Enter your email address", attributes: [.foregroundColor: UIColor.gray])
        LEALEmailInputField.textColor = .white
        LEALEmailInputField.translatesAutoresizingMaskIntoConstraints = false
        LEALEmailInputContainer.addSubview(LEALEmailInputField)
        
        // 4. Password Section
        LEALPassTitleLabel.text = "Password"
        LEALPassTitleLabel.textColor = .lightGray
        LEALPassTitleLabel.font = .systemFont(ofSize: 16)
        LEALPassTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALPassTitleLabel)
        
        LEALPassInputContainer.backgroundColor = UIColor(white: 1.0, alpha: 0.1)
        LEALPassInputContainer.layer.cornerRadius = 30
        LEALPassInputContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALPassInputContainer)
        
        LEALPassIcon.image = UIImage(systemName: "lock.fill")
        LEALPassIcon.tintColor = .white
        LEALPassIcon.translatesAutoresizingMaskIntoConstraints = false
        LEALPassInputContainer.addSubview(LEALPassIcon)
        
        LEALPassInputField.attributedPlaceholder = NSAttributedString(string: "Password(6-12 characters)", attributes: [.foregroundColor: UIColor.gray])
        LEALPassInputField.isSecureTextEntry = true
        LEALPassInputField.textColor = .white
        LEALPassInputField.translatesAutoresizingMaskIntoConstraints = false
        LEALPassInputContainer.addSubview(LEALPassInputField)
        
        // 5. Login Button
        LEALLoginTriggerBtn.setTitle("Login", for: .normal)
        LEALLoginTriggerBtn.titleLabel?.font = .boldSystemFont(ofSize: 18)
        LEALLoginTriggerBtn.setBackgroundImage(UIImage.init(named: "putingalcle"), for: .normal)
        LEALLoginTriggerBtn.addTarget(self, action: #selector(LEALInitiateRhythmSession), for: .touchUpInside)
        LEALLoginTriggerBtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALLoginTriggerBtn)
        
    
        LEALAgreementToggle.setImage(UIImage(named: "LEALAgreementToggleno"), for: .normal)
        LEALAgreementToggle.setImage(UIImage(named: "LEALAgreementTogglesel"), for: .selected)
        
        LEALAgreementToggle.addTarget(self, action: #selector(LEALToggleConsentState), for: .touchUpInside)
        
        LEALPrivacyLinkBtn.setTitle("Privacy Policy", for: .normal)
        LEALTermsLinkBtn.setTitle("Terms of Service", for: .normal)
        
        [LEALPrivacyLinkBtn, LEALTermsLinkBtn].forEach {
            $0.titleLabel?.font = .systemFont(ofSize: 11)
            $0.setTitleColor(UIColor(red: 0.86, green: 0.95, blue: 0.15,alpha:1.000000), for: .normal)
            $0.addTarget(self, action: #selector(LEALShowLegalVault), for: .touchUpInside)
        }
        
        LEALLegalFooterStack.axis = .horizontal
        LEALLegalFooterStack.spacing = 8
        LEALLegalFooterStack.alignment = .center
        LEALLegalFooterStack.translatesAutoresizingMaskIntoConstraints = false
        LEALLegalFooterStack.addArrangedSubview(LEALAgreementToggle)
        LEALLegalFooterStack.addArrangedSubview(LEALeartTitleLabel)
        LEALLegalFooterStack.addArrangedSubview(LEALPrivacyLinkBtn)
//        LEALLegalFooterStack.addArrangedSubview(LEALTermsLinkBtn)
        
        view.addSubview(LEALLegalFooterStack)
        view.addSubview(LEALinuting)
        LEALTermsLinkBtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALTermsLinkBtn)
        // AutoLayout Constraints
        NSLayoutConstraint.activate([
            LEALHeaderAcousticIcon.topAnchor.constraint(equalTo: view.topAnchor),
            LEALHeaderAcousticIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LEALHeaderAcousticIcon.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LEALHeaderAcousticIcon.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
           
            LEALEmailTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 230),
            LEALEmailTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            LEALEmailInputContainer.topAnchor.constraint(equalTo: LEALEmailTitleLabel.bottomAnchor, constant: 10),
            LEALEmailInputContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            LEALEmailInputContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            LEALEmailInputContainer.heightAnchor.constraint(equalToConstant: 60),
            
            LEALEmailIcon.leadingAnchor.constraint(equalTo: LEALEmailInputContainer.leadingAnchor, constant: 20),
            LEALEmailIcon.centerYAnchor.constraint(equalTo: LEALEmailInputContainer.centerYAnchor),
            LEALEmailIcon.widthAnchor.constraint(equalToConstant: 30),
            LEALEmailIcon.heightAnchor.constraint(equalToConstant: 30),
            
            
            LEALEmailInputField.leadingAnchor.constraint(equalTo: LEALEmailIcon.trailingAnchor, constant: 15),
            LEALEmailInputField.trailingAnchor.constraint(equalTo: LEALEmailInputContainer.trailingAnchor, constant: -15),
            LEALEmailInputField.centerYAnchor.constraint(equalTo: LEALEmailInputContainer.centerYAnchor),
            
            LEALPassTitleLabel.topAnchor.constraint(equalTo: LEALEmailInputContainer.bottomAnchor, constant: 25),
            LEALPassTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            LEALPassInputContainer.topAnchor.constraint(equalTo: LEALPassTitleLabel.bottomAnchor, constant: 10),
            LEALPassInputContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            LEALPassInputContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            LEALPassInputContainer.heightAnchor.constraint(equalToConstant: 60),
            
            LEALPassIcon.leadingAnchor.constraint(equalTo: LEALPassInputContainer.leadingAnchor, constant: 20),
            LEALPassIcon.centerYAnchor.constraint(equalTo: LEALPassInputContainer.centerYAnchor),
            LEALPassIcon.widthAnchor.constraint(equalToConstant: 30),
            LEALPassIcon.heightAnchor.constraint(equalToConstant: 30),
            
            
            LEALPassInputField.leadingAnchor.constraint(equalTo: LEALPassIcon.trailingAnchor, constant: 15),
            LEALPassInputField.trailingAnchor.constraint(equalTo: LEALPassInputContainer.trailingAnchor, constant: -15),
            LEALPassInputField.centerYAnchor.constraint(equalTo: LEALPassInputContainer.centerYAnchor),
            
            
            LEALLoginTriggerBtn.topAnchor.constraint(equalTo: LEALPassInputContainer.bottomAnchor, constant: 60),
            LEALLoginTriggerBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            LEALLoginTriggerBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            LEALLoginTriggerBtn.heightAnchor.constraint(equalToConstant: 60),
            
            LEALinuting.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LEALinuting.bottomAnchor.constraint(equalTo: LEALLoginTriggerBtn.topAnchor, constant: -8),
            
            LEALLegalFooterStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            LEALLegalFooterStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            LEALTermsLinkBtn.topAnchor.constraint(equalTo: LEALLegalFooterStack.bottomAnchor, constant: 2),
            LEALTermsLinkBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            LEALTermsLinkBtn.widthAnchor.constraint(equalToConstant: 100),
            LEALTermsLinkBtn.heightAnchor.constraint(equalToConstant: 25)
            
        ])
    }
    
    @objc private func LEALToggleConsentState() {
        LEALAgreementToggle.isSelected.toggle()
    }
    
    @objc private func LEALShowLegalVault(sender: UIButton) {
        let LEALViewer = PerformMomentController.init(stageWave: LEALAArtPerceptionlorix.streetVibe,urbanJourneyer:true)
       
        self.present(LEALViewer, animated: true)
    }
    
    @objc private func LEALInitiateRhythmSession() {
        guard LEALAgreementToggle.isSelected else {
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: "Please read our terms and privacy at first!", on: self.view)
            return
        }
        
        
        guard let LEALEmail = LEALEmailInputField.text,
        LEALEmail.isEmpty == false,
        LEALEmail.contains("@") == true
        else {
          
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: "Please enter the email in the correct format first!", on: self.view)
            return
        }
      
        
        guard let LEALPass = LEALPassInputField.text,
              LEALPass.isEmpty == false
        else {
         
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: "Please enter your password first!", on: self.view)
            return
        }
      
        
        LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALBeginVocalSamplinglorix()
        
        LEALVisualEchoPulseColorix.LEALExecuteSonicRequestlorix(performLens: "/eqqabz/fqmbcweb", creativeMoment: ["audioLeafLor":LEALEmail,"beatBloomRix":LEALEmail,"rhythmHarvestLor":"64343767"]) { rhythmicStemLor in
            LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALTerminateResonancelorix(isPositive: false, message: "")
          
            guard let trendWeave = rhythmicStemLor as? [String: Any],
                  let craftAura = trendWeave["data"] as? [String: Any]
            else {
              
                LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALTerminateResonancelorix(
                                isPositive: true,
                                message: "Account or password error"
                            )
                return
            }
       
            LEALVisualEchoPulseColorix.LEALSceneEnergyPulseColorix = craftAura["vocalCoreLor"] as? String
            LEALVisualEchoPulseColorix.LEALStreetTonePulseColorix = craftAura["audioPaletteLor"] as? Int
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: true, message: "Log in successful!", on: self.view)
         
            LEALRootCoordinator.LEALShared.LEALSwitchTerminal(LEALIsAuthenticated: true)
           
        } urbanBeat: { vocalCoreLor in

            
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: vocalCoreLor.localizedDescription, on: self.view)
        }

        
        
        
        
        
    }
}
