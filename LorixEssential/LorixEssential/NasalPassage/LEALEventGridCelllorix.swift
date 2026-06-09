//
//  LEALEventGridCelllorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import UIKit

class LEALEventGridCollectionCelllorix: UICollectionViewCell {
    private let LEALPosterContainerlorix = UIView()
    private let LEALPosterVisualorix = UIImageView()
    private let LEALVibeTitlelorix = UILabel()
     let LEALAlertBadgeVisualorix = UIButton()
    
    
    private let LEALParticipantStacklorix = UIStackView()
        private let LEALVibeCountLabellorix = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALBuildAcousticCelllorix()
    }
    
    required init?(coder: NSCoder) { fatalError() }
    
    private func LEALBuildAcousticCelllorix() {
        LEALPosterContainerlorix.layer.cornerRadius = 20
        LEALPosterContainerlorix.clipsToBounds = true
        LEALPosterContainerlorix.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        LEALPosterContainerlorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALPosterContainerlorix)
        
        LEALPosterVisualorix.contentMode = .scaleAspectFill
        LEALPosterVisualorix.translatesAutoresizingMaskIntoConstraints = false
        LEALPosterContainerlorix.addSubview(LEALPosterVisualorix)
        
        LEALAlertBadgeVisualorix.setImage(LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "exclamationmarkLorix"), for: .normal)
        
        LEALAlertBadgeVisualorix.translatesAutoresizingMaskIntoConstraints = false
        LEALPosterContainerlorix.addSubview(LEALAlertBadgeVisualorix)
        
        LEALVibeTitlelorix.textColor = .white
        LEALVibeTitlelorix.font = .systemFont(ofSize: 16, weight: .bold)
        LEALVibeTitlelorix.numberOfLines = 2
        LEALVibeTitlelorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALVibeTitlelorix)
              
       
        LEALParticipantStacklorix.axis = .horizontal
        LEALParticipantStacklorix.spacing = -8
        LEALParticipantStacklorix.distribution = .fillEqually
        LEALParticipantStacklorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALParticipantStacklorix)
        
        LEALVibeCountLabellorix.textColor = .lightGray
        LEALVibeCountLabellorix.font = .systemFont(ofSize: 14)
        LEALVibeCountLabellorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALVibeCountLabellorix)

        
        
        NSLayoutConstraint.activate([
            LEALPosterContainerlorix.topAnchor.constraint(equalTo: contentView.topAnchor),
            LEALPosterContainerlorix.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            LEALPosterContainerlorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            LEALPosterContainerlorix.heightAnchor.constraint(equalTo: LEALPosterContainerlorix.widthAnchor, multiplier: 1.2),

            LEALAlertBadgeVisualorix.topAnchor.constraint(equalTo: LEALPosterContainerlorix.topAnchor, constant: 10),
            LEALAlertBadgeVisualorix.trailingAnchor.constraint(equalTo: LEALPosterContainerlorix.trailingAnchor, constant: -10),
            LEALAlertBadgeVisualorix.widthAnchor.constraint(equalToConstant: 35),
            
            LEALVibeTitlelorix.topAnchor.constraint(equalTo: LEALPosterContainerlorix.bottomAnchor, constant: 8),
            LEALVibeTitlelorix.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            LEALVibeTitlelorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
            LEALParticipantStacklorix.topAnchor.constraint(equalTo: LEALVibeTitlelorix.bottomAnchor, constant: 8),
                        LEALParticipantStacklorix.leadingAnchor.constraint(equalTo: LEALVibeTitlelorix.leadingAnchor),
                        LEALParticipantStacklorix.heightAnchor.constraint(equalToConstant: 24),
                        
                        LEALVibeCountLabellorix.centerYAnchor.constraint(equalTo: LEALParticipantStacklorix.centerYAnchor),
                        LEALVibeCountLabellorix.leadingAnchor.constraint(equalTo: LEALParticipantStacklorix.trailingAnchor, constant: 10)
            
        ])
    }
    
    func LEALRenderEventVisualorix(_ model: Dictionary<String,Any>) {
        if let lorix = model["veinSoundLor"] as? String {
            LEALPosterVisualorix.LEALVocalVisualSyncColorix(LEALSonicPathlorix: lorix)
        }
        LEALVibeTitlelorix.text = model["sonicTideRix"] as? String
      
        LEALParticipantStacklorix.arrangedSubviews.forEach { $0.removeFromSuperview() }
        guard  let actilive = model["rhythmicMuscleRix"] as? Array<Dictionary<String,Any>> else {return}
        
        LEALVibeCountLabellorix.text = "\(actilive.count ) +"
       
        
        for (d,item) in actilive.enumerated() {
            let LEALMiniAvatarColorix = UIImageView()
            LEALMiniAvatarColorix.backgroundColor = .gray
            LEALMiniAvatarColorix.layer.cornerRadius = 12
            LEALMiniAvatarColorix.layer.borderWidth = 1.5
            LEALMiniAvatarColorix.layer.borderColor = UIColor.black.cgColor
            LEALMiniAvatarColorix.clipsToBounds = true
            LEALMiniAvatarColorix.widthAnchor.constraint(equalToConstant: 24).isActive = true
            LEALMiniAvatarColorix.LEALVocalVisualSyncColorix(LEALSonicPathlorix: item["boneSonicLor"] as? String)
            LEALParticipantStacklorix.addArrangedSubview(LEALMiniAvatarColorix)
        }
    }
    
   
}
