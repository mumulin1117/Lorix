//
//  LEALCategoryHeaderlorixView.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/9.
//

import UIKit
class LEALCategoryHeaderlorixView: UICollectionReusableView {
    var LEALActionCallbacklorix: ((Int) -> Void)?
    private let LEALStacklorix = UIStackView()
    private let LEALIndicatorlorix = UIImageView(image: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "LEALIndicatorlorix"), )
    private var LEALBtnArraylorix: [UIButton] = []

    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALBuildCategoryHublorix()
    }
    
    required init?(coder: NSCoder) { fatalError() }

    private func LEALBuildCategoryHublorix() {
        LEALStacklorix.axis = .horizontal
        LEALStacklorix.distribution = .fillEqually
        LEALStacklorix.translatesAutoresizingMaskIntoConstraints = false
        addSubview(LEALStacklorix)
        
        let LEALTitleslorix = ["9FLn7tOnXLGkF6M3YyHbS7zQ9Sjv4FuV7AmGoxNtxevGtSg=", "AuLHA+yg/upDjlqKcyfZDyKLrA2N9XzQjhyV9td84U2y/Rs=", "xrF+RzpPcXieK+9CGa5DenAq2jcYiHkgfU+Ofi4Pc856knEktn4Mw1Y="]
        for (index, title) in LEALTitleslorix.enumerated() {
            let LEALBtnlorix = UIButton(type: .custom)
            LEALBtnlorix.setTitle(LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: title) , for: .normal)
            LEALBtnlorix.setTitleColor(.lightGray, for: .normal)
            LEALBtnlorix.setTitleColor(.white, for: .selected)
            LEALBtnlorix.titleLabel?.font = .boldSystemFont(ofSize: 18)
            LEALBtnlorix.tag = index
            LEALBtnlorix.addTarget(self, action: #selector(LEALInternalSwitchlorix(_:)), for: .touchUpInside)
            if index == 0 { LEALBtnlorix.isSelected = true }
            LEALStacklorix.addArrangedSubview(LEALBtnlorix)
            LEALBtnArraylorix.append(LEALBtnlorix)
        }
        
       
        LEALIndicatorlorix.translatesAutoresizingMaskIntoConstraints = false
        addSubview(LEALIndicatorlorix)

        NSLayoutConstraint.activate([
            LEALStacklorix.topAnchor.constraint(equalTo: topAnchor),
            LEALStacklorix.leadingAnchor.constraint(equalTo: leadingAnchor),
            LEALStacklorix.widthAnchor.constraint(equalToConstant: 280),
            LEALStacklorix.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            LEALIndicatorlorix.topAnchor.constraint(equalTo: LEALStacklorix.bottomAnchor, constant: -12),
            LEALIndicatorlorix.heightAnchor.constraint(equalToConstant: 4),
            LEALIndicatorlorix.widthAnchor.constraint(equalToConstant: 25),
            LEALIndicatorlorix.centerXAnchor.constraint(equalTo: LEALBtnArraylorix[0].centerXAnchor)
        ])
    }

    @objc private func LEALInternalSwitchlorix(_ sender: UIButton) {
        LEALBtnArraylorix.forEach { $0.isSelected = ($0 == sender) }
        UIView.animate(withDuration: 0.3) {
            self.LEALIndicatorlorix.center.x = sender.center.x
           
        }
        LEALActionCallbacklorix?(sender.tag)
    }
}
