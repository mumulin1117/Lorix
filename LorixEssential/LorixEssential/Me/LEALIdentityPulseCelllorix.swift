//
//  LEALIdentityPulseCelllorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import UIKit

class LEALIdentityPulseCelllorix: UICollectionViewCell {
    
     let LEALAvatarVisualNodeColorix = UIImageView()
     let LEALEditPencilTriggerColorix = UIButton()
     let LEALNamePulseLabellorix = UILabel()
    private let LEALStatStackHublorix = UIStackView()
     let LEALCoinBalancePlateColorix = UIButton()
    
    var attensionLealMy:UIButton?
    var MyrealattensionLeal:UIButton?
    var MyLiakoLealMy:UIButton?
    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALBuildIdentityVisualSructurelorix()
    }
    
    required init?(coder: NSCoder) { fatalError() }
    
    private func LEALBuildIdentityVisualSructurelorix() {
        let coForinLayer = CAGradientLayer()
        coForinLayer.colors = [UIColor(red: 0.32, green: 0.09, blue: 0.43, alpha: 1).cgColor, UIColor(red: 0.07, green: 0.04, blue: 0.23, alpha: 1).cgColor]
        coForinLayer.locations = [0, 1]
        coForinLayer.frame = CGRect(x: 0, y: 80, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        coForinLayer.startPoint = CGPoint(x: 0.58, y: 0)
        coForinLayer.endPoint = CGPoint(x: 1, y: 1)
        coForinLayer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        coForinLayer.cornerRadius = 20
        contentView.layer.insertSublayer(coForinLayer, at: 0)//.addSublayer()
        LEALCoinBalancePlateColorix.setTitleColor(.white, for: .normal)
        LEALCoinBalancePlateColorix.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        LEALCoinBalancePlateColorix.setImage(UIImage.init(named: "leadCoingold"), for: .normal)
        LEALCoinBalancePlateColorix.setTitle(" My Blance  ->", for: .normal)
        LEALEditPencilTriggerColorix.setImage(UIImage.init(named: "sujiEdit"), for: .normal)
        
        LEALAvatarVisualNodeColorix.layer.cornerRadius = 60
        LEALAvatarVisualNodeColorix.layer.borderWidth = 4
        LEALAvatarVisualNodeColorix.layer.borderColor = UIColor.systemPurple.cgColor
        LEALAvatarVisualNodeColorix.clipsToBounds = true
        LEALAvatarVisualNodeColorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALAvatarVisualNodeColorix)
        
        LEALNamePulseLabellorix.text = "Emily"
        LEALNamePulseLabellorix.textColor = .white
        LEALNamePulseLabellorix.font = .systemFont(ofSize: 32, weight: .bold)
        LEALNamePulseLabellorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALNamePulseLabellorix)
        
        LEALCoinBalancePlateColorix.layer.cornerRadius = 25
       
        let LEALGradientlorix = CAGradientLayer()
        LEALGradientlorix.colors = [UIColor(red: 1, green: 0.55, blue: 0.1, alpha: 1).cgColor, UIColor(red: 1, green: 0.05, blue: 0.7, alpha: 1).cgColor]
        LEALGradientlorix.locations = [0, 1]
        LEALGradientlorix.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width*0.85, height: 50)
        LEALGradientlorix.startPoint = CGPoint(x: 0, y: 0.29)
        LEALGradientlorix.endPoint = CGPoint(x: 0.29, y: 0.29)
        
        LEALCoinBalancePlateColorix.layer.masksToBounds = true
        LEALCoinBalancePlateColorix.layer.insertSublayer(LEALGradientlorix, below: LEALCoinBalancePlateColorix.imageView?.layer)
        LEALCoinBalancePlateColorix.translatesAutoresizingMaskIntoConstraints = false
        
        
        LEALEditPencilTriggerColorix.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        LEALStatStackHublorix.axis = .horizontal
            
        LEALStatStackHublorix.distribution = .fillEqually
        LEALStatStackHublorix.alignment = .center
        LEALStatStackHublorix.translatesAutoresizingMaskIntoConstraints = false
      
        contentView.addSubview(LEALCoinBalancePlateColorix)
        contentView.addSubview(LEALEditPencilTriggerColorix)
        contentView.addSubview(LEALStatStackHublorix)
        
        let LEALFollowNodelorix = LEALCreateStatUnitlorix(value: "0", title: "Follow")
        self.MyrealattensionLeal = LEALFollowNodelorix
        let LEALFansNodelorix = LEALCreateStatUnitlorix(value: "0", title: "Fans")
        self.attensionLealMy = LEALFansNodelorix
        
        let LEALLikesNodelorix = LEALCreateStatUnitlorix(value: "0", title: "Posts")
        self.MyLiakoLealMy = LEALLikesNodelorix
            [LEALFollowNodelorix, LEALFansNodelorix, LEALLikesNodelorix].forEach {
                LEALStatStackHublorix.addArrangedSubview($0)
            }
        
        
        NSLayoutConstraint.activate([
            LEALAvatarVisualNodeColorix.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            LEALAvatarVisualNodeColorix.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            LEALAvatarVisualNodeColorix.widthAnchor.constraint(equalToConstant: 120),
            LEALAvatarVisualNodeColorix.heightAnchor.constraint(equalToConstant: 120),
            
            LEALNamePulseLabellorix.topAnchor.constraint(equalTo: LEALAvatarVisualNodeColorix.bottomAnchor, constant: 15),
            LEALNamePulseLabellorix.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            LEALStatStackHublorix.topAnchor.constraint(equalTo: LEALNamePulseLabellorix.bottomAnchor, constant: 14),
            LEALStatStackHublorix.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            LEALStatStackHublorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            LEALStatStackHublorix.heightAnchor.constraint(equalToConstant: 55),
            
            
            LEALEditPencilTriggerColorix.widthAnchor.constraint(equalToConstant: 47),
            LEALEditPencilTriggerColorix.heightAnchor.constraint(equalToConstant: 47),
            LEALEditPencilTriggerColorix.trailingAnchor.constraint(equalTo: LEALAvatarVisualNodeColorix.trailingAnchor,constant: 8),
            LEALEditPencilTriggerColorix.bottomAnchor.constraint(equalTo: LEALAvatarVisualNodeColorix.bottomAnchor, constant: 8),
            
            
            
            
            LEALCoinBalancePlateColorix.topAnchor.constraint(equalTo: LEALStatStackHublorix.bottomAnchor, constant: 30),
            LEALCoinBalancePlateColorix.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            LEALCoinBalancePlateColorix.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.85),
            LEALCoinBalancePlateColorix.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func LEALCreateStatUnitlorix(value: String, title: String) -> UIButton {
        let LEALVesselColorix = UIButton()
        
        let LEALValueLabellorix = UILabel()
        LEALValueLabellorix.text = value
        LEALValueLabellorix.textColor = .white
        LEALValueLabellorix.font = .systemFont(ofSize: 20, weight: .bold)
        LEALValueLabellorix.textAlignment = .center
        LEALValueLabellorix.translatesAutoresizingMaskIntoConstraints = false
        
        let LEALTitleLabellorix = UILabel()
        LEALTitleLabellorix.text = title
        LEALTitleLabellorix.textColor = UIColor.white.withAlphaComponent(0.6)
        LEALTitleLabellorix.font = .systemFont(ofSize: 14, weight: .regular)
        LEALTitleLabellorix.textAlignment = .center
        LEALTitleLabellorix.translatesAutoresizingMaskIntoConstraints = false
        
        LEALVesselColorix.addSubview(LEALValueLabellorix)
        LEALVesselColorix.addSubview(LEALTitleLabellorix)
        
        NSLayoutConstraint.activate([
            LEALValueLabellorix.topAnchor.constraint(equalTo: LEALVesselColorix.topAnchor),
            LEALValueLabellorix.centerXAnchor.constraint(equalTo: LEALVesselColorix.centerXAnchor),
            
            LEALTitleLabellorix.topAnchor.constraint(equalTo: LEALValueLabellorix.bottomAnchor, constant: 4),
            LEALTitleLabellorix.centerXAnchor.constraint(equalTo: LEALVesselColorix.centerXAnchor),
            LEALTitleLabellorix.bottomAnchor.constraint(equalTo: LEALVesselColorix.bottomAnchor)
        ])

        let LEALTaporix = UITapGestureRecognizer(target: self, action: #selector(LEALStatNodeTriggeredlorix(_:)))
        LEALVesselColorix.addGestureRecognizer(LEALTaporix)
        LEALVesselColorix.isUserInteractionEnabled = true
        
        return LEALVesselColorix
    }
    
    @objc private func LEALStatNodeTriggeredlorix(_ sender: UITapGestureRecognizer) {
        
        UIView.animate(withDuration: 0.1, animations: {
            sender.view?.alpha = 0.5
        }) { _ in
            UIView.animate(withDuration: 0.1) { sender.view?.alpha = 1.0 }
        }
    }
}
