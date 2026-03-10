//
//  LEALMessageInflowCelllorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import UIKit

class LEALMessageInflowCollectionCelllorix: UICollectionViewCell {
    
    private let LEALAvatarVisualNodeColorix = UIImageView()
    private let LEALOnlineStatusPulseColorix = UIView()
    private let LEALSenderTitleLabellorix = UILabel()
    private let LEALMessageSnippetLabellorix = UILabel()
    private let LEALTimeStampLabellorix = UILabel()
    private let LEALUnreadBadgePulseColorix = UILabel()
    private let LEALDividerLineVisualorix = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALAssembleMessageComponentlorix()
    }
    
    required init?(coder: NSCoder) { fatalError() }
    
    private func LEALAssembleMessageComponentlorix() {
        backgroundColor = .clear
   
        LEALAvatarVisualNodeColorix.layer.cornerRadius = 30
        LEALAvatarVisualNodeColorix.clipsToBounds = true
        
        LEALAvatarVisualNodeColorix.backgroundColor = .darkGray
        LEALAvatarVisualNodeColorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALAvatarVisualNodeColorix)
        
       
        LEALOnlineStatusPulseColorix.backgroundColor = .green
        LEALOnlineStatusPulseColorix.layer.cornerRadius = 6
        LEALOnlineStatusPulseColorix.layer.borderWidth = 2
        LEALOnlineStatusPulseColorix.layer.borderColor = UIColor.black.cgColor
        LEALOnlineStatusPulseColorix.translatesAutoresizingMaskIntoConstraints = false
        
        LEALOnlineStatusPulseColorix.isHidden = true
        contentView.addSubview(LEALOnlineStatusPulseColorix)
        
      
        LEALSenderTitleLabellorix.textColor = .white
        LEALSenderTitleLabellorix.font = .systemFont(ofSize: 18, weight: .bold)
        LEALSenderTitleLabellorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALSenderTitleLabellorix)
        
        LEALMessageSnippetLabellorix.textColor = UIColor.white.withAlphaComponent(0.6)
        LEALMessageSnippetLabellorix.font = .systemFont(ofSize: 14, weight: .regular)
        LEALMessageSnippetLabellorix.numberOfLines = 1
        LEALMessageSnippetLabellorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALMessageSnippetLabellorix)
        
        LEALTimeStampLabellorix.textColor = UIColor.white.withAlphaComponent(0.4)
        LEALTimeStampLabellorix.font = .systemFont(ofSize: 12)
        LEALTimeStampLabellorix.textAlignment = .right
        LEALTimeStampLabellorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALTimeStampLabellorix)
        
        LEALUnreadBadgePulseColorix.backgroundColor = .systemRed
        LEALUnreadBadgePulseColorix.textColor = .white
        LEALUnreadBadgePulseColorix.font = .systemFont(ofSize: 10, weight: .bold)
        LEALUnreadBadgePulseColorix.textAlignment = .center
        LEALUnreadBadgePulseColorix.layer.cornerRadius = 10
        LEALUnreadBadgePulseColorix.clipsToBounds = true
        LEALUnreadBadgePulseColorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALUnreadBadgePulseColorix)
        
    
        LEALDividerLineVisualorix.backgroundColor = UIColor.white.withAlphaComponent(0.05)
        LEALDividerLineVisualorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALDividerLineVisualorix)
        
        LEALApplyMessageLayoutConstraintsColorix()
    }
    
    private func LEALApplyMessageLayoutConstraintsColorix() {
        NSLayoutConstraint.activate([
            LEALAvatarVisualNodeColorix.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            LEALAvatarVisualNodeColorix.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            LEALAvatarVisualNodeColorix.widthAnchor.constraint(equalToConstant: 60),
            LEALAvatarVisualNodeColorix.heightAnchor.constraint(equalToConstant: 60),
            
            LEALOnlineStatusPulseColorix.trailingAnchor.constraint(equalTo: LEALAvatarVisualNodeColorix.trailingAnchor, constant: -2),
            LEALOnlineStatusPulseColorix.bottomAnchor.constraint(equalTo: LEALAvatarVisualNodeColorix.bottomAnchor, constant: -2),
            LEALOnlineStatusPulseColorix.widthAnchor.constraint(equalToConstant: 12),
            LEALOnlineStatusPulseColorix.heightAnchor.constraint(equalToConstant: 12),
            
            LEALSenderTitleLabellorix.topAnchor.constraint(equalTo: LEALAvatarVisualNodeColorix.topAnchor, constant: 4),
            LEALSenderTitleLabellorix.leadingAnchor.constraint(equalTo: LEALAvatarVisualNodeColorix.trailingAnchor, constant: 14),
            LEALSenderTitleLabellorix.trailingAnchor.constraint(equalTo: LEALTimeStampLabellorix.leadingAnchor, constant: -10),
            
            LEALMessageSnippetLabellorix.bottomAnchor.constraint(equalTo: LEALAvatarVisualNodeColorix.bottomAnchor, constant: -4),
            LEALMessageSnippetLabellorix.leadingAnchor.constraint(equalTo: LEALSenderTitleLabellorix.leadingAnchor),
            LEALMessageSnippetLabellorix.trailingAnchor.constraint(equalTo: LEALUnreadBadgePulseColorix.leadingAnchor, constant: -10),
            
            LEALTimeStampLabellorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            LEALTimeStampLabellorix.centerYAnchor.constraint(equalTo: LEALSenderTitleLabellorix.centerYAnchor),
            LEALTimeStampLabellorix.widthAnchor.constraint(equalToConstant: 80),
            
            LEALUnreadBadgePulseColorix.trailingAnchor.constraint(equalTo: LEALTimeStampLabellorix.trailingAnchor),
            LEALUnreadBadgePulseColorix.centerYAnchor.constraint(equalTo: LEALMessageSnippetLabellorix.centerYAnchor),
            LEALUnreadBadgePulseColorix.widthAnchor.constraint(greaterThanOrEqualToConstant: 20),
            LEALUnreadBadgePulseColorix.heightAnchor.constraint(equalToConstant: 20),
            
            LEALDividerLineVisualorix.leadingAnchor.constraint(equalTo: LEALSenderTitleLabellorix.leadingAnchor),
            LEALDividerLineVisualorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            LEALDividerLineVisualorix.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            LEALDividerLineVisualorix.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func LEALRenderPulseInfolorix(_ model: LEALSignalMessagelorix) {
        LEALSenderTitleLabellorix.text = model.LEALSenderNamelorix
        LEALMessageSnippetLabellorix.text = model.LEALLastPhaselorix
        LEALTimeStampLabellorix.text = model.LEALTimestampTextlorix
        
        if model.LEALUnreadPulseCountlorix > 0 {
            LEALUnreadBadgePulseColorix.isHidden = false
            LEALUnreadBadgePulseColorix.text = "\(model.LEALUnreadPulseCountlorix)"
        } else {
            LEALUnreadBadgePulseColorix.isHidden = true
        }
        

        LEALOnlineStatusPulseColorix.isHidden = model.LEALSenderNamelorix.count % 2 == 0
    }
}
