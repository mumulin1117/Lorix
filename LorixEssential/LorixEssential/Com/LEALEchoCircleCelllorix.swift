//
//  LEALEchoCircleCelllorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/9.
//

import UIKit

class LEALEchoCircleCelllorix: UICollectionViewCell {
    
    private let LEALAvatarContainerlorix = UIView()
    private let LEALProfileImageVisualorix = UIImageView()
    
    
    private let LEALLiveIndicatorBadgelorix = UIView()
    private let LEALLiveTextlorix = UIImageView.init(image: UIImage.init(named: "LEALLiveIndicatorTextlori"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALArchitectEchoStructurelorix()
    }
    
    required init?(coder: NSCoder) { fatalError() }
    
    private func LEALArchitectEchoStructurelorix() {
        LEALAvatarContainerlorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALAvatarContainerlorix)
        LEALAvatarContainerlorix.addSubview(LEALProfileImageVisualorix)
        
        
        
        LEALProfileImageVisualorix.layer.cornerRadius = (UIScreen.main.bounds.width * 0.22) / 2
        LEALProfileImageVisualorix.clipsToBounds = true
        LEALProfileImageVisualorix.layer.borderWidth = 2
        LEALProfileImageVisualorix.layer.borderColor = UIColor(red: 1, green: 0.05, blue: 0.7, alpha: 1).cgColor
        LEALProfileImageVisualorix.translatesAutoresizingMaskIntoConstraints = false
        
        
        LEALLiveIndicatorBadgelorix.backgroundColor = .clear
        LEALLiveIndicatorBadgelorix.layer.cornerRadius = 8
        LEALLiveIndicatorBadgelorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALLiveIndicatorBadgelorix)
        
        
        LEALLiveTextlorix.translatesAutoresizingMaskIntoConstraints = false
        LEALLiveIndicatorBadgelorix.addSubview(LEALLiveTextlorix)
        
        NSLayoutConstraint.activate([
            LEALAvatarContainerlorix.topAnchor.constraint(equalTo: contentView.topAnchor),
            LEALAvatarContainerlorix.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            LEALAvatarContainerlorix.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1),
            LEALAvatarContainerlorix.heightAnchor.constraint(equalTo: LEALAvatarContainerlorix.widthAnchor),
            
            LEALProfileImageVisualorix.topAnchor.constraint(equalTo: LEALAvatarContainerlorix.topAnchor),
            LEALProfileImageVisualorix.leadingAnchor.constraint(equalTo: LEALAvatarContainerlorix.leadingAnchor),
            LEALProfileImageVisualorix.trailingAnchor.constraint(equalTo: LEALAvatarContainerlorix.trailingAnchor),
            LEALProfileImageVisualorix.bottomAnchor.constraint(equalTo: LEALAvatarContainerlorix.bottomAnchor),
            
            LEALLiveIndicatorBadgelorix.bottomAnchor.constraint(equalTo: LEALAvatarContainerlorix.bottomAnchor, constant: 5),
            LEALLiveIndicatorBadgelorix.centerXAnchor.constraint(equalTo: LEALAvatarContainerlorix.centerXAnchor),
            LEALLiveIndicatorBadgelorix.heightAnchor.constraint(equalToConstant: 18),
            LEALLiveIndicatorBadgelorix.widthAnchor.constraint(equalToConstant: 40),
            
            LEALLiveTextlorix.centerXAnchor.constraint(equalTo: LEALLiveIndicatorBadgelorix.centerXAnchor),
            LEALLiveTextlorix.centerYAnchor.constraint(equalTo: LEALLiveIndicatorBadgelorix.centerYAnchor)
        ])
    }
    
    func LEALUpdateEchoVisualslorix(_ LEALDataModellorix: Dictionary<String,Any>) {
        LEALProfileImageVisualorix.backgroundColor = .darkGray
        
        if let lorix = LEALDataModellorix["vocalPercussionLor"] as? String {
            LEALProfileImageVisualorix.LEALVocalVisualSyncColorix(LEALSonicPathlorix: lorix)
        }
      
        LEALLiveTextlorix.isHidden = Bool.random()
    }
}
