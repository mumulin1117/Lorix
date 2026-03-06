//
//  LEALSonicFeedCelllori.swift
//  LorixEssential
//
//  Created by mumu on 2026/3/6.
//

import UIKit

class LEALSonicFeedCelllori: UICollectionViewCell {
    
    private let LEALMasterCardBackinglori = UIView()
    private let LEALPreviewSurfaceImglori = UIImageView()
    private let LEALViewerBadgeBoxlori = UIView()
    private let LEALViewerIconlori = UIImageView()
    private let LEALViewerCountLabelori = UILabel()
    
    private let LEALStreamTitleLabelori = UILabel()
    private let LEALLiveStatusBadgecolorlori = UIView()
    private let LEALLiveIndicatorTextlori = UILabel()
    
    private let LEALHostAvatarImglori = UIImageView()
    private let LEALHostIdentityLabelori = UILabel()
    private let LEALMoreActionBtnlori = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALAssembleSonicCellComponentslori()
    }
    
    required init?(coder: NSCoder) { fatalError() }

    private func LEALAssembleSonicCellComponentslori() {
        // 1. Container Setup
        contentView.addSubview(LEALMasterCardBackinglori)
        LEALMasterCardBackinglori.backgroundColor = UIColor(white: 1.0, alpha: 0.08)
        LEALMasterCardBackinglori.layer.cornerRadius = 35
        LEALMasterCardBackinglori.clipsToBounds = true
        LEALMasterCardBackinglori.translatesAutoresizingMaskIntoConstraints = false
        
        // 2. Cover Image Surface
        LEALPreviewSurfaceImglori.contentMode = .scaleAspectFill
        LEALPreviewSurfaceImglori.layer.cornerRadius = 25
        LEALPreviewSurfaceImglori.clipsToBounds = true
        LEALPreviewSurfaceImglori.translatesAutoresizingMaskIntoConstraints = false
        LEALMasterCardBackinglori.addSubview(LEALPreviewSurfaceImglori)
        
        // 3. Viewer Count Badge (Overlay on Image)
        LEALViewerBadgeBoxlori.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        LEALViewerBadgeBoxlori.layer.cornerRadius = 12
        LEALViewerBadgeBoxlori.translatesAutoresizingMaskIntoConstraints = false
        LEALPreviewSurfaceImglori.addSubview(LEALViewerBadgeBoxlori)
        
        LEALViewerIconlori.image = UIImage(systemName: "eye")
        LEALViewerIconlori.tintColor = .white
        LEALViewerIconlori.translatesAutoresizingMaskIntoConstraints = false
        LEALViewerBadgeBoxlori.addSubview(LEALViewerIconlori)
        
        LEALViewerCountLabelori.textColor = .white
        LEALViewerCountLabelori.font = .systemFont(ofSize: 12, weight: .medium)
        LEALViewerCountLabelori.translatesAutoresizingMaskIntoConstraints = false
        LEALViewerBadgeBoxlori.addSubview(LEALViewerCountLabelori)
        
        // 4. Stream Metadata (Title & Live Tag)
        LEALStreamTitleLabelori.textColor = .white
        LEALStreamTitleLabelori.font = .boldSystemFont(ofSize: 18)
        LEALStreamTitleLabelori.numberOfLines = 2
        LEALStreamTitleLabelori.translatesAutoresizingMaskIntoConstraints = false
        LEALMasterCardBackinglori.addSubview(LEALStreamTitleLabelori)
        
        LEALLiveStatusBadgecolorlori.backgroundColor = .systemPink
        LEALLiveStatusBadgecolorlori.layer.cornerRadius = 10
        LEALLiveStatusBadgecolorlori.translatesAutoresizingMaskIntoConstraints = false
        LEALMasterCardBackinglori.addSubview(LEALLiveStatusBadgecolorlori)
        
        LEALLiveIndicatorTextlori.text = "● Live"
        LEALLiveIndicatorTextlori.textColor = .white
        LEALLiveIndicatorTextlori.font = .systemFont(ofSize: 12, weight: .bold)
        LEALLiveIndicatorTextlori.translatesAutoresizingMaskIntoConstraints = false
        LEALLiveStatusBadgecolorlori.addSubview(LEALLiveIndicatorTextlori)
        
        // 5. Host Info Bar
        LEALHostAvatarImglori.layer.cornerRadius = 18
        LEALHostAvatarImglori.clipsToBounds = true
        LEALHostAvatarImglori.translatesAutoresizingMaskIntoConstraints = false
        LEALMasterCardBackinglori.addSubview(LEALHostAvatarImglori)
        
        LEALHostIdentityLabelori.textColor = .lightGray
        LEALHostIdentityLabelori.font = .systemFont(ofSize: 14)
        LEALHostIdentityLabelori.translatesAutoresizingMaskIntoConstraints = false
        LEALMasterCardBackinglori.addSubview(LEALHostIdentityLabelori)
        
        LEALMoreActionBtnlori.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        LEALMoreActionBtnlori.tintColor = .white
        LEALMoreActionBtnlori.backgroundColor = UIColor(white: 1.0, alpha: 0.1)
        LEALMoreActionBtnlori.layer.cornerRadius = 12
        LEALMoreActionBtnlori.translatesAutoresizingMaskIntoConstraints = false
        LEALMasterCardBackinglori.addSubview(LEALMoreActionBtnlori)
        
        // Layout Constraints
        NSLayoutConstraint.activate([
            LEALMasterCardBackinglori.topAnchor.constraint(equalTo: contentView.topAnchor),
            LEALMasterCardBackinglori.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            LEALMasterCardBackinglori.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            LEALMasterCardBackinglori.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            LEALPreviewSurfaceImglori.topAnchor.constraint(equalTo: LEALMasterCardBackinglori.topAnchor, constant: 15),
            LEALPreviewSurfaceImglori.leadingAnchor.constraint(equalTo: LEALMasterCardBackinglori.leadingAnchor, constant: 15),
            LEALPreviewSurfaceImglori.bottomAnchor.constraint(equalTo: LEALMasterCardBackinglori.bottomAnchor, constant: -15),
            LEALPreviewSurfaceImglori.widthAnchor.constraint(equalTo: LEALMasterCardBackinglori.widthAnchor, multiplier: 0.38),
            
            LEALViewerBadgeBoxlori.topAnchor.constraint(equalTo: LEALPreviewSurfaceImglori.topAnchor, constant: 10),
            LEALViewerBadgeBoxlori.leadingAnchor.constraint(equalTo: LEALPreviewSurfaceImglori.leadingAnchor, constant: 10),
            LEALViewerBadgeBoxlori.heightAnchor.constraint(equalToConstant: 24),
            LEALViewerIconlori.leadingAnchor.constraint(equalTo: LEALViewerBadgeBoxlori.leadingAnchor, constant: 8),
            LEALViewerIconlori.centerYAnchor.constraint(equalTo: LEALViewerBadgeBoxlori.centerYAnchor),
            LEALViewerCountLabelori.leadingAnchor.constraint(equalTo: LEALViewerIconlori.trailingAnchor, constant: 4),
            LEALViewerCountLabelori.trailingAnchor.constraint(equalTo: LEALViewerBadgeBoxlori.trailingAnchor, constant: -8),
            LEALViewerCountLabelori.centerYAnchor.constraint(equalTo: LEALViewerBadgeBoxlori.centerYAnchor),
            
            LEALStreamTitleLabelori.topAnchor.constraint(equalTo: LEALPreviewSurfaceImglori.topAnchor, constant: 5),
            LEALStreamTitleLabelori.leadingAnchor.constraint(equalTo: LEALPreviewSurfaceImglori.trailingAnchor, constant: 15),
            LEALStreamTitleLabelori.trailingAnchor.constraint(equalTo: LEALMasterCardBackinglori.trailingAnchor, constant: -15),
            
            LEALLiveStatusBadgecolorlori.topAnchor.constraint(equalTo: LEALStreamTitleLabelori.bottomAnchor, constant: 12),
            LEALLiveStatusBadgecolorlori.leadingAnchor.constraint(equalTo: LEALStreamTitleLabelori.leadingAnchor),
            LEALLiveStatusBadgecolorlori.heightAnchor.constraint(equalToConstant: 28),
            LEALLiveIndicatorTextlori.centerXAnchor.constraint(equalTo: LEALLiveStatusBadgecolorlori.centerXAnchor),
            LEALLiveIndicatorTextlori.centerYAnchor.constraint(equalTo: LEALLiveStatusBadgecolorlori.centerYAnchor),
            LEALLiveIndicatorTextlori.leadingAnchor.constraint(equalTo: LEALLiveStatusBadgecolorlori.leadingAnchor, constant: 12),
            
            LEALHostAvatarImglori.bottomAnchor.constraint(equalTo: LEALPreviewSurfaceImglori.bottomAnchor),
            LEALHostAvatarImglori.leadingAnchor.constraint(equalTo: LEALStreamTitleLabelori.leadingAnchor),
            LEALHostAvatarImglori.widthAnchor.constraint(equalToConstant: 36),
            LEALHostAvatarImglori.heightAnchor.constraint(equalToConstant: 36),
            
            LEALHostIdentityLabelori.leadingAnchor.constraint(equalTo: LEALHostAvatarImglori.trailingAnchor, constant: 10),
            LEALHostIdentityLabelori.centerYAnchor.constraint(equalTo: LEALHostAvatarImglori.centerYAnchor),
            
            LEALMoreActionBtnlori.trailingAnchor.constraint(equalTo: LEALMasterCardBackinglori.trailingAnchor, constant: -15),
            LEALMoreActionBtnlori.bottomAnchor.constraint(equalTo: LEALPreviewSurfaceImglori.bottomAnchor),
            LEALMoreActionBtnlori.widthAnchor.constraint(equalToConstant: 44),
            LEALMoreActionBtnlori.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    func LEALConfigureSonicEntrylori(_ LEALDataModelori: LEALSonicLiveEntrylori) {
        LEALStreamTitleLabelori.text = LEALDataModelori.LEALStreamTitlelori
        LEALViewerCountLabelori.text = LEALDataModelori.LEALViewerCountlori
        LEALHostIdentityLabelori.text = LEALDataModelori.LEALHostNamelori
        
        // Placeholder setup - Replace with real image loading like SDWebImage
        LEALPreviewSurfaceImglori.backgroundColor = .darkGray
        LEALHostAvatarImglori.backgroundColor = .systemPurple
    }
}
