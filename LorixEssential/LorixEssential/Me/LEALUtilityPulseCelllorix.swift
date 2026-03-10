//
//  LEALUtilityPulseCelllorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import UIKit

class LEALUtilityPulseCelllorix: UICollectionViewCell {
    private let LEALIconVisualNodelorix = UIImageView()
    private let LEALTitlePulseLabellorix = UILabel()
    private let LEALChevronVisualColorix = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALAssembleUtilityLayerlorix()
    }
    
    required init?(coder: NSCoder) { fatalError() }
    
    private func LEALAssembleUtilityLayerlorix() {
        LEALIconVisualNodelorix.tintColor = .white
        LEALIconVisualNodelorix.contentMode = .scaleAspectFit
        LEALIconVisualNodelorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALIconVisualNodelorix)
        
        LEALTitlePulseLabellorix.textColor = .white
        LEALTitlePulseLabellorix.font = .systemFont(ofSize: 17)
        LEALTitlePulseLabellorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALTitlePulseLabellorix)
        
        LEALChevronVisualColorix.image = UIImage(systemName: "chevron.right")
        LEALChevronVisualColorix.tintColor = .gray
        LEALChevronVisualColorix.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(LEALChevronVisualColorix)
        
        NSLayoutConstraint.activate([
            LEALIconVisualNodelorix.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            LEALIconVisualNodelorix.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            LEALIconVisualNodelorix.widthAnchor.constraint(equalToConstant: 24),
            
            LEALTitlePulseLabellorix.leadingAnchor.constraint(equalTo: LEALIconVisualNodelorix.trailingAnchor, constant: 15),
            LEALTitlePulseLabellorix.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            LEALChevronVisualColorix.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            LEALChevronVisualColorix.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    func LEALConfigureUtilityPulseColorix(_ LEALDataInfolorix: LEALUtilityPulseModellorix) {
        LEALIconVisualNodelorix.image = UIImage(systemName: LEALDataInfolorix.LEALUtilityIconlorix)
        LEALTitlePulseLabellorix.text = LEALDataInfolorix.LEALUtilityTitlelorix
    }
}
