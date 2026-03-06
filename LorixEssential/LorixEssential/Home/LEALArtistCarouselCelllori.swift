//
//  LEALArtistCarouselCelllori.swift
//  LorixEssential
//
//  Created by mumu on 2026/3/6.
//

import UIKit


class LEALArtistCarouselCelllori: UICollectionViewCell {
    private let LEALContentBackinglori = UIView()
    private let LEALAvatarVisualior = UIImageView()
    private let LEALArtistNamelori = UILabel()
    private let LEALMetricStacklori = UIStackView()
    private let LEALVoiceCallActionlori = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALArchitectCelllori()
    }
    
    private func LEALArchitectCelllori() {
        contentView.addSubview(LEALContentBackinglori)
        LEALContentBackinglori.backgroundColor = UIColor(white: 1.0, alpha: 0.1)
        LEALContentBackinglori.layer.cornerRadius = 30
        LEALContentBackinglori.translatesAutoresizingMaskIntoConstraints = false
        
        LEALAvatarVisualior.layer.cornerRadius = 45
        LEALAvatarVisualior.clipsToBounds = true
        LEALAvatarVisualior.layer.borderWidth = 3
        LEALAvatarVisualior.layer.borderColor = UIColor.systemPurple.cgColor
        LEALAvatarVisualior.translatesAutoresizingMaskIntoConstraints = false
        LEALContentBackinglori.addSubview(LEALAvatarVisualior)
        
        LEALArtistNamelori.textColor = .white
        LEALArtistNamelori.font = .boldSystemFont(ofSize: 22)
        LEALArtistNamelori.translatesAutoresizingMaskIntoConstraints = false
        LEALContentBackinglori.addSubview(LEALArtistNamelori)
        
        LEALVoiceCallActionlori.setImage(UIImage(systemName: "phone.fill"), for: .normal)
        LEALVoiceCallActionlori.backgroundColor = .systemPurple
        LEALVoiceCallActionlori.layer.cornerRadius = 20
        LEALVoiceCallActionlori.tintColor = .white
        LEALVoiceCallActionlori.translatesAutoresizingMaskIntoConstraints = false
        LEALContentBackinglori.addSubview(LEALVoiceCallActionlori)
        
        NSLayoutConstraint.activate([
            LEALContentBackinglori.topAnchor.constraint(equalTo: contentView.topAnchor),
            LEALContentBackinglori.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            LEALContentBackinglori.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            LEALContentBackinglori.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            LEALAvatarVisualior.leadingAnchor.constraint(equalTo: LEALContentBackinglori.leadingAnchor, constant: 15),
            LEALAvatarVisualior.centerYAnchor.constraint(equalTo: LEALContentBackinglori.centerYAnchor),
            LEALAvatarVisualior.widthAnchor.constraint(equalToConstant: 90),
            LEALAvatarVisualior.heightAnchor.constraint(equalToConstant: 90),
            
            LEALArtistNamelori.leadingAnchor.constraint(equalTo: LEALAvatarVisualior.trailingAnchor, constant: 15),
            LEALArtistNamelori.topAnchor.constraint(equalTo: LEALAvatarVisualior.topAnchor, constant: 10),
            
            LEALVoiceCallActionlori.trailingAnchor.constraint(equalTo: LEALContentBackinglori.trailingAnchor, constant: -20),
            LEALVoiceCallActionlori.centerYAnchor.constraint(equalTo: LEALContentBackinglori.centerYAnchor),
            LEALVoiceCallActionlori.widthAnchor.constraint(equalToConstant: 50),
            LEALVoiceCallActionlori.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func LEALConfigureAcousticCelllori(_ model: LEALRhythmArtistlori) {
        LEALArtistNamelori.text = model.LEALArtistIdentitylori
        LEALAvatarVisualior.image = UIImage(named: model.LEALArtistAvatarlori)
    }
    
    required init?(coder: NSCoder) { fatalError() }
}
