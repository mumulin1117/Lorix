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
        LEALPassTitleLabel.text = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "dgDJkNpoOqEflZ2hSb712p2Izd5U6ZE6mUyf/jX48R1b4e6n4XD0QLDW0fLY57yBPqRBRUFPhftCNw7fKGxQ07JguOg7H5xXE1ULaeR63hLz+sTq2g==")
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
        
        LEALHeaderAcousticIcon.image = LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "mowertDribbble") // Asset matching your design
        LEALHeaderAcousticIcon.contentMode = .scaleAspectFill
        LEALHeaderAcousticIcon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALHeaderAcousticIcon)
        
        LEALeartTitleLabel.text = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "9Zl+UKBpg1CD8AD1wqgcKkKqGogT//UERA3JAkQz2P+XLOmNIl3YZAtFn2cPO8cLNrQqK257olXnbrbxVRg=")
        LEALeartTitleLabel.textColor = .white
        LEALeartTitleLabel.font = .systemFont(ofSize: 13)
        LEALEmailTitleLabel.text = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "rUri8DAXb8+lm10laQjKzbivTJwP8yJ/s10US67Po4SWGxIMnA==")
        LEALEmailTitleLabel.textColor = .lightGray
        LEALEmailTitleLabel.font = .systemFont(ofSize: 16)
        LEALEmailTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALEmailTitleLabel)
        
        LEALEmailInputContainer.backgroundColor = UIColor(white: 1.0, alpha: 0.1)
        LEALEmailInputContainer.layer.cornerRadius = 30
        LEALEmailInputContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALEmailInputContainer)
        
        LEALEmailIcon.image = LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "envelopeentile")
        LEALEmailIcon.translatesAutoresizingMaskIntoConstraints = false
        LEALEmailInputContainer.addSubview(LEALEmailIcon)
        
        LEALEmailInputField.attributedPlaceholder = NSAttributedString(string: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal:"7vhXGobxqfE3EmCKw8LPxlNm5i4E7wKaNydYundhWHO3T9mWSRA4KX8d9G/oPRovkZS9j5HJrfw=") , attributes: [.foregroundColor: UIColor.gray])
        LEALEmailInputField.textColor = .white
        LEALEmailInputField.translatesAutoresizingMaskIntoConstraints = false
        LEALEmailInputContainer.addSubview(LEALEmailInputField)
        
        // 4. Password Section
        LEALPassTitleLabel.text = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "t3D4R9nnHHO03XcHL1+T5c80G2PA1prkOTe2QPbhYSv4/Q/aBKqt2Q==")
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
        
        LEALPassInputField.attributedPlaceholder = NSAttributedString(string: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "A8FD6KO0s5LPMyY2sjM3b2Kjmj0vMzuutBgqW0IEJnKlKMlpbmjIC7bn6Lq/2AyrvzqOZsv7KOlH"), attributes: [.foregroundColor: UIColor.gray])
        LEALPassInputField.isSecureTextEntry = true
        LEALPassInputField.textColor = .white
        LEALPassInputField.translatesAutoresizingMaskIntoConstraints = false
        LEALPassInputContainer.addSubview(LEALPassInputField)
        
        // 5. Login Button
        LEALLoginTriggerBtn.setTitle(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "8Hp9N2CLSyeXLu+AgU/PbmtpPKkx8vRKNJnJH0PrPDWnVclWSQ=="), for: .normal)
        LEALLoginTriggerBtn.titleLabel?.font = .boldSystemFont(ofSize: 18)
        LEALLoginTriggerBtn.setBackgroundImage(LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "putingalcle"), for: .normal)
        LEALLoginTriggerBtn.addTarget(self, action: #selector(LEALInitiateRhythmSession), for: .touchUpInside)
        LEALLoginTriggerBtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALLoginTriggerBtn)
        
    
        LEALAgreementToggle.setImage(LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "LEALAgreementToggleno"), for: .normal)
        LEALAgreementToggle.setImage(LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "LEALAgreementTogglesel"), for: .selected)
        
        LEALAgreementToggle.addTarget(self, action: #selector(LEALToggleConsentState), for: .touchUpInside)
        
        LEALPrivacyLinkBtn.setTitle(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "jbtuqHepfG9asHcpUazFzdJJXbuSIuNdm1nInpNxA3TNQWNiv27qbNDRMfJxRg=="), for: .normal)
        LEALTermsLinkBtn.setTitle(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "q3Cjr62+oCGzcxl8JDYAmfopNYxsgycc2+ecdNdxNqHw1ji64Q4p55gtauwRdyjA"), for: .normal)
        
        [LEALPrivacyLinkBtn, LEALTermsLinkBtn].forEach {
            $0.titleLabel?.font = .systemFont(ofSize: 11)
            $0.setTitleColor(UIColor(red: 0.86, green: 0.95, blue: 0.15,alpha:1.000000), for: .normal)
            
        }
        LEALPrivacyLinkBtn.addTarget(self, action: #selector(LEALShowLegalVault), for: .touchUpInside)
        LEALTermsLinkBtn.addTarget(self, action: #selector(LEALShowLegalVault), for: .touchUpInside)
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
        let LEALViewer = PerformMomentController.init(plosiveBurstLor:sender == self.LEALPrivacyLinkBtn ? LEALAArtbeatSenseRixlorix.soundWavelengthRix :LEALAArtbeatSenseRixlorix.vocalSpectrumLor ,NoiseLor:true)
       
        self.present(LEALViewer, animated: true)
    }
    
    @objc private func LEALInitiateRhythmSession() {
        guard LEALAgreementToggle.isSelected else {
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "18WBht9F22G/+dVBHauIit5FeHIW7dXb2lo/gvl/m8Qnk3LvXPGLqAYV9hXce6X1gDFalKTfsyuBA7lzsjRKCbFd9OZtrNkCtK/g"), on: self.view)
            return
        }
        
        
        guard let LEALEmail = LEALEmailInputField.text,
        LEALEmail.isEmpty == false,
        LEALEmail.contains("@") == true
        else {
          
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message:LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "KNiy1JXBCmQFH/TvwSzFXr2LUTWbemf5f36LtsAD4sRV0l42OjCkiLjHFScug45uCKir6obuj3c1Mf+yTKilsNzCyf/jOU1gL8r/HIwMcedgAdw=") , on: self.view)
            return
        }
      
        
        guard let LEALPass = LEALPassInputField.text,
              LEALPass.isEmpty == false
        else {
         
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "0jSc87v7rlQcbgy7X1WZZNS3L0SOB94o9t8kuevIAY4vRHNK0Fr0OBsJgDzYCgZN3vJ69z1m+jYc+uji032EjO0="), on: self.view)
            return
        }
      
        
        LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALBeginVocalSamplinglorix()
        
        LEALAcalSignatureLorrix.nasalPassageLor(vocalFoldRix: "/eqqabz/fqmbcweb", lungCapacityLor: ["audioLeafLor":LEALEmail,"beatBloomRix":LEALEmail,"rhythmHarvestLor":"64343767"]) { rhythmicStemLor in
            LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALTerminateResonancelorix(isPositive: false, message: "")
          
            guard let trendWeave = rhythmicStemLor as? [String: Any],
                  let craftAura = trendWeave[aksingLEALE] as? [String: Any]
            else {
              
                LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALTerminateResonancelorix(
                                isPositive: true,
                                message: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "C/FVc66MtVid1wkj0nzZo4qQngdxdm1PFsul/gZVjekG0IlGS6kt0U3EF2VZl8sTisZ2O13zBMT0")
                            )
                return
            }
       
            LEALAcalSignatureLorrix.palatalFrictionLor = craftAura["vocalCoreLor"] as? String
            LEALAcalSignatureLorrix.subharmonicToneRix = craftAura["audioPaletteLor"] as? Int
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: true, message: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Rzd7//LsARsYgDmwKL1l3BlqHLWmtLozfH1fE1Klf7jmok4zWhHxlKEM8Kmd33bMBL4="), on: self.view)
         
            LEALRootCoordinator.LEALShared.LEALSwitchTerminal(LEALIsAuthenticated: true)
           
        } articulationPointLor: { vocalCoreLor in

            
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: vocalCoreLor.localizedDescription, on: self.view)
        }

        
        
        
        
        
    }
}
