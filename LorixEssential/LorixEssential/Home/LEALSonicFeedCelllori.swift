//
//  LEALSonicFeedCelllori.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/6.
//

import UIKit
//live
class LEALSonicFeedCelllori: UICollectionViewCell {
    
    private let LEALMasterCardBackinglori = UIView()
    private let LEALPreviewSurfaceImglori = UIImageView()
    private let LEALViewerBadgeBoxlori = UIView()
    private let LEALViewerIconlori = UIImageView()
    private let LEALViewerCountLabelori = UILabel()
    
    private let LEALStreamTitleLabelori = UILabel()

    private let LEALLiveIndicatorTextlori = UIImageView.init(image: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "LEALLiveIndicatorTextlori"))
    
    private let LEALHostAvatarImglori = UIImageView()
    private let LEALHostIdentityLabelori = UILabel()
     let LEALMoreActionBtnlori = UIButton()

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
        
//        LEALLiveStatusBadgecolorlori.backgroundColor = .systemPink
//        LEALLiveStatusBadgecolorlori.layer.cornerRadius = 10
//        LEALLiveStatusBadgecolorlori.translatesAutoresizingMaskIntoConstraints = false
//        LEALMasterCardBackinglori.addSubview(LEALLiveStatusBadgecolorlori)
//        
       
        LEALLiveIndicatorTextlori.translatesAutoresizingMaskIntoConstraints = false
        LEALMasterCardBackinglori.addSubview(LEALLiveIndicatorTextlori)
        
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
            
            LEALLiveIndicatorTextlori.topAnchor.constraint(equalTo: LEALStreamTitleLabelori.bottomAnchor, constant: 12),
            LEALLiveIndicatorTextlori.leadingAnchor.constraint(equalTo: LEALStreamTitleLabelori.leadingAnchor),
            LEALLiveIndicatorTextlori.widthAnchor.constraint(equalToConstant: 62),
            LEALLiveIndicatorTextlori.heightAnchor.constraint(equalToConstant: 28),
              
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
    
    func LEALConfigureSonicEntrylori(_ LEALDataModelori: Dictionary<String,Any>) {
        if let lorix = LEALDataModelori["acousticPathRix"] as? String {
            LEALPreviewSurfaceImglori.LEALVocalVisualSyncColorix(LEALSonicPathlorix: lorix)
        }
        
        if let lorix = LEALDataModelori["acousticSignalRix"] as? String {
            LEALHostAvatarImglori.LEALVocalVisualSyncColorix(LEALSonicPathlorix: lorix)
        }
        
        LEALViewerCountLabelori.text = "\(Int.random(in: 20...80))"
        
        LEALLiveIndicatorTextlori.isHidden =  !((LEALDataModelori["beatGuideRix"] as? Int) == -1)
        LEALPreviewSurfaceImglori.backgroundColor = .darkGray
        LEALHostAvatarImglori.backgroundColor = .systemPurple
        LEALStreamTitleLabelori.text = LEALDataModelori["rhythmicTrailLor"] as? String
        
        LEALHostIdentityLabelori.text = LEALDataModelori["vocalBeaconLor"] as? String
    }
}
