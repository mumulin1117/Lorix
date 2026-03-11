//
//  LEALArtistCarouselCelllori.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/6.
//

import UIKit

//artist
class LEALArtistCarouselCelllori: UICollectionViewCell {
     let LEALAvatarVisualior = UIImageView()
    
    private let LEALContentBackinglori = UIView()
    
     let LEALArtistNamelori = UILabel()
    
    lazy var LEALFollowlori: UILabel = {
        let LEALFollowlori = UILabel.init()
        LEALFollowlori.translatesAutoresizingMaskIntoConstraints = false
        LEALFollowlori.textColor = .white
        LEALFollowlori.font = UIFont.systemFont(ofSize: 14)
        LEALFollowlori.text = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "8uqwFWzsm3EPXYjtTGdoyvofw9QVACfOXVN/s2eXnOUk3/EL7AxtJNbv4A=="))
        return LEALFollowlori
    }()
    
    lazy var LEALFhotolori: UILabel = {
        let LEALFollowlori = UILabel.init()
        LEALFollowlori.translatesAutoresizingMaskIntoConstraints = false
        LEALFollowlori.textColor = .white
        LEALFollowlori.font = UIFont.systemFont(ofSize: 14)
        LEALFollowlori.text = LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "UBmjKzgPt0bOFQKHRYtJE6+labooKKexUF2c8LJ75g7OpZ7sSklnWw==")
        return LEALFollowlori
    }()
    
    
    private let LEALMetricStacklori = UIStackView()
    private let LEALVoiceCallActionlori = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALArchitectCelllori()
        
    }
    
    private func LEALArchitectCelllori() {
        contentView.addSubview(LEALContentBackinglori)
        LEALContentBackinglori.backgroundColor = UIColor(red: 0.22, green: 0.07, blue: 0.53, alpha: 1)
        LEALContentBackinglori.layer.cornerRadius = 20
        LEALContentBackinglori.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALAvatarVisualior)
        
        LEALAvatarVisualior.layer.cornerRadius = 34
        LEALAvatarVisualior.clipsToBounds = true
        LEALAvatarVisualior.layer.borderWidth = 2
        LEALAvatarVisualior.layer.borderColor = UIColor.systemPurple.cgColor
        LEALAvatarVisualior.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALAvatarVisualior)
        
        
        LEALArtistNamelori.textColor = .white
        LEALArtistNamelori.font = .boldSystemFont(ofSize: 22)
        LEALArtistNamelori.translatesAutoresizingMaskIntoConstraints = false
        LEALContentBackinglori.addSubview(LEALArtistNamelori)
        
        LEALVoiceCallActionlori.image = LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "LEALGcall")
        
        LEALVoiceCallActionlori.translatesAutoresizingMaskIntoConstraints = false
        LEALContentBackinglori.addSubview(LEALVoiceCallActionlori)
        LEALContentBackinglori.addSubview(LEALFollowlori)
        LEALContentBackinglori.addSubview(LEALFhotolori)
        NSLayoutConstraint.activate([
            LEALContentBackinglori.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            LEALContentBackinglori.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 34),
            LEALContentBackinglori.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            LEALContentBackinglori.heightAnchor.constraint(equalToConstant: 100),
            
            LEALAvatarVisualior.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            LEALAvatarVisualior.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            LEALAvatarVisualior.widthAnchor.constraint(equalToConstant: 68),
            LEALAvatarVisualior.heightAnchor.constraint(equalToConstant: 68),
            LEALArtistNamelori.widthAnchor.constraint(equalToConstant: 100),
            LEALArtistNamelori.leadingAnchor.constraint(equalTo: LEALContentBackinglori.leadingAnchor, constant: 44),
            LEALArtistNamelori.topAnchor.constraint(equalTo: LEALContentBackinglori.topAnchor, constant: 22),
            
            LEALVoiceCallActionlori.trailingAnchor.constraint(equalTo: LEALContentBackinglori.trailingAnchor, constant: -20),
            LEALVoiceCallActionlori.topAnchor.constraint(equalTo: LEALContentBackinglori.topAnchor,constant: 18),
            LEALVoiceCallActionlori.widthAnchor.constraint(equalToConstant: 51),
            LEALVoiceCallActionlori.heightAnchor.constraint(equalToConstant: 32),
            
            LEALFollowlori.leadingAnchor.constraint(equalTo: LEALArtistNamelori.leadingAnchor, constant: 10),
            LEALFollowlori.bottomAnchor.constraint(equalTo: LEALAvatarVisualior.bottomAnchor, constant: 0),
            
            LEALFhotolori.leadingAnchor.constraint(equalTo: LEALFollowlori.trailingAnchor, constant: 10),
            LEALFhotolori.centerYAnchor.constraint(equalTo: LEALFollowlori.centerYAnchor)
        ])
    }
    
//    func LEALConfigureAcousticCelllori(_ model: LEALRhythmArtistlori) {
//        LEALArtistNamelori.text = model.LEALArtistIdentitylori
//        LEALAvatarVisualior.image = LEALVocalResonanceCorelorix.MITTBuilsdFetchVibeGraphic(MITTBuilsdAssetAlias: model.LEALArtistAvatarlori)
//    }
    
    required init?(coder: NSCoder) { fatalError() }
}
