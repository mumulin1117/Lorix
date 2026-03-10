//
//  LEALPulseFeedCelllorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/9.
//

import UIKit
import Foundation

struct LEALEchoArtistlorix: Codable {
    let LEALArtistIdlorix: String
    let LEALArtistAvatarImglorix: String
    let LEALIsLiveNowlorix: Bool
}

struct LEALPulseContentlorix: Codable {
    let LEALContentIdlorix: String
    let LEALAuthorNamelorix: String
    let LEALAuthorAvatarImglorix: String
    let LEALCoverVisualImglorix: String
    let LEALPulseDescriptionlorix: String
    let LEALHeartCountlorix: Int
    let LEALCommentCountlorix: Int
}
class LEALPulseFeedCelllorix: UICollectionViewCell {
    
    private let LEALMainVisualImglorix = UIImageView()
    private let LEALAuthorInfolorix = UIImageView.init(image: UIImage.init(named: "LEALAuthorInfolorix"))
    
    private let LEALAuthorAvatarlorix = UIImageView()
    private let LEALAuthorNamelabelorix = UILabel()
    
    private let LEALHotBadgeImglorix = UIImageView(image: UIImage.init(named: "neverhoter"))
    private let LEALDescriptionLabellorix = UILabel()
    
    lazy var LEALDAdd: UIButton = {
        let EALDbutton = UIButton()
        EALDbutton.setImage(UIImage.init(named: "cireldLes"), for: .normal)
        EALDbutton.translatesAutoresizingMaskIntoConstraints = false
        return EALDbutton
    }()
    
    
    private let LEALInteractionBarlorix = UIStackView()
    
    private let LEALHeartActionlorix = UIButton()
    private let LEALCommentActionlorix = UIButton()
    private let LEALMoreOptionslorix = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALAssemblePulseStructurelorix()
        
       
        LEALInteractionBarlorix.addArrangedSubview(LEALHeartActionlorix)
        LEALInteractionBarlorix.addArrangedSubview(LEALCommentActionlorix)
        LEALInteractionBarlorix.addArrangedSubview(LEALMoreOptionslorix)
        
        
        LEALHeartActionlorix.setImage(UIImage.init(named: "singerzand"), for: .normal)
        LEALCommentActionlorix.setImage(UIImage.init(named: "singercomment"), for: .normal)
        LEALMoreOptionslorix.setImage(UIImage.init(named: "LEALGreport"), for: .normal)
    }
    
    required init?(coder: NSCoder) { fatalError() }

    private func LEALAssemblePulseStructurelorix() {
        contentView.backgroundColor = .clear
        LEALAuthorInfolorix.translatesAutoresizingMaskIntoConstraints = false
        LEALAuthorInfolorix.contentMode = .scaleToFill
        LEALHotBadgeImglorix.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        LEALMainVisualImglorix.layer.cornerRadius = 35
        LEALMainVisualImglorix.clipsToBounds = true
        LEALMainVisualImglorix.contentMode = .scaleAspectFill
        LEALMainVisualImglorix.backgroundColor = .darkGray
        LEALMainVisualImglorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALMainVisualImglorix)
        contentView.addSubview(LEALAuthorInfolorix)
        
        
        
        
        
        LEALAuthorAvatarlorix.layer.cornerRadius = 25
        LEALAuthorAvatarlorix.layer.borderWidth = 2
        LEALAuthorAvatarlorix.layer.borderColor = UIColor.systemPurple.cgColor
        LEALAuthorAvatarlorix.clipsToBounds = true
        LEALAuthorAvatarlorix.translatesAutoresizingMaskIntoConstraints = false
        
        
        LEALAuthorNamelabelorix.textColor = .white
        LEALAuthorNamelabelorix.font = .boldSystemFont(ofSize: 18)
        LEALAuthorNamelabelorix.translatesAutoresizingMaskIntoConstraints = false
        
        
        LEALMainVisualImglorix.addSubview(LEALAuthorAvatarlorix)
        LEALMainVisualImglorix.addSubview(LEALAuthorNamelabelorix)
        LEALMainVisualImglorix.addSubview(LEALHotBadgeImglorix)
        LEALMainVisualImglorix.addSubview(LEALDAdd)
       
        
        
        
        
        LEALDescriptionLabellorix.textColor = .white
        LEALDescriptionLabellorix.font = .systemFont(ofSize: 14)
        LEALDescriptionLabellorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALDescriptionLabellorix)
        
        
        
        LEALInteractionBarlorix.distribution = .fillProportionally
        LEALInteractionBarlorix.axis = .horizontal
        LEALInteractionBarlorix.spacing = 25
        LEALInteractionBarlorix.alignment = .center
        LEALInteractionBarlorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALInteractionBarlorix)
        
        NSLayoutConstraint.activate([
            LEALMainVisualImglorix.topAnchor.constraint(equalTo: contentView.topAnchor),
            LEALMainVisualImglorix.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            LEALMainVisualImglorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            LEALMainVisualImglorix.heightAnchor.constraint(equalToConstant: 300),
            
            LEALAuthorInfolorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            LEALAuthorInfolorix.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            LEALAuthorInfolorix.bottomAnchor.constraint(equalTo: LEALMainVisualImglorix.bottomAnchor, constant: 0),
            LEALAuthorInfolorix.heightAnchor.constraint(equalToConstant: 115),
            
            LEALDAdd.bottomAnchor.constraint(equalTo: LEALAuthorAvatarlorix.bottomAnchor),
            LEALDAdd.widthAnchor.constraint(equalToConstant: 25),
            LEALDAdd.heightAnchor.constraint(equalToConstant: 25),
            LEALDAdd.trailingAnchor.constraint(equalTo: LEALAuthorAvatarlorix.trailingAnchor, constant: 0),
            
            
            
            
            LEALAuthorAvatarlorix.leadingAnchor.constraint(equalTo: LEALMainVisualImglorix.leadingAnchor, constant: 15),
            LEALAuthorAvatarlorix.bottomAnchor.constraint(equalTo: LEALMainVisualImglorix.bottomAnchor, constant: -15),
            LEALAuthorAvatarlorix.widthAnchor.constraint(equalToConstant: 50),
            LEALAuthorAvatarlorix.heightAnchor.constraint(equalToConstant: 50),
            
            LEALAuthorNamelabelorix.leadingAnchor.constraint(equalTo: LEALAuthorAvatarlorix.trailingAnchor, constant: 10),
            LEALAuthorNamelabelorix.centerYAnchor.constraint(equalTo: LEALAuthorAvatarlorix.centerYAnchor, constant: -10),
            
            LEALHotBadgeImglorix.widthAnchor.constraint(equalToConstant: 52),
            LEALHotBadgeImglorix.heightAnchor.constraint(equalToConstant: 22),
            LEALHotBadgeImglorix.leadingAnchor.constraint(equalTo: LEALAuthorNamelabelorix.trailingAnchor, constant: 6),
            LEALHotBadgeImglorix.centerYAnchor.constraint(equalTo: LEALAuthorNamelabelorix.centerYAnchor),
            
            
            LEALDescriptionLabellorix.leadingAnchor.constraint(equalTo: LEALAuthorNamelabelorix.leadingAnchor),
            LEALDescriptionLabellorix.topAnchor.constraint(equalTo: LEALAuthorNamelabelorix.bottomAnchor, constant: 2),
            
//            LEALInteractionBarlorix.topAnchor.constraint(equalTo: LEALMainVisualImglorix.bottomAnchor, constant: 15),
            LEALInteractionBarlorix.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            LEALInteractionBarlorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            LEALInteractionBarlorix.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            LEALInteractionBarlorix.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func LEALConfigurePulseCelllorix(_ model: Dictionary<String,Any>,ishot:Bool) {
     
    }
}
