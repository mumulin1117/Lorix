//
//  LEALUserStagelViewController.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//
import UIKit
import Foundation

enum LEALProfileSectionlorix: Int, CaseIterable {
    case LEALVocalIdentitylorix
    case LEALRhythmUtilitylorix
}

struct LEALUtilityPulseModellorix {
    let LEALUtilityIconlorix: String
    let LEALUtilityTitlelorix: String
}
class LEALUserStagelViewController: UIViewController {
    
    private var LEALProfileCollectionlorix: UICollectionView!
    private let LEALTopVocalBackgroundlorix = UIImageView()
    private var LEALUtilityListlorix: [LEALUtilityPulseModellorix] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LEALInitializeSonicFoundationlorix()
        LEALAssembleRhythmNodelorix()
        LEALRequestProfileSyncColorix()
    }
    
    private func LEALInitializeSonicFoundationlorix() {
        view.backgroundColor = UIColor(red: 0.05, green: 0.02, blue: 0.15, alpha: 1)
        
        LEALTopVocalBackgroundlorix.image = UIImage(named: "LEALProfileTunnelBackgroundlorix")
        LEALTopVocalBackgroundlorix.contentMode = .scaleAspectFill
        LEALTopVocalBackgroundlorix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALTopVocalBackgroundlorix)
        
        NSLayoutConstraint.activate([
            LEALTopVocalBackgroundlorix.topAnchor.constraint(equalTo: view.topAnchor),
            LEALTopVocalBackgroundlorix.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LEALTopVocalBackgroundlorix.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LEALTopVocalBackgroundlorix.heightAnchor.constraint(equalToConstant: 335)
        ])
    }
    
    private func LEALAssembleRhythmNodelorix() {
        let LEALCompositionalLayoutlorix = UICollectionViewCompositionalLayout { [weak self] (sectionIndex, _) -> NSCollectionLayoutSection? in
            guard let LEALSectionTypelorix = LEALProfileSectionlorix(rawValue: sectionIndex) else { return nil }
            switch LEALSectionTypelorix {
            case .LEALVocalIdentitylorix: return self?.LEALCreateIdentityLayoutlorix()
            case .LEALRhythmUtilitylorix: return self?.LEALCreateUtilityLayoutlorix()
            }
        }
        
        LEALProfileCollectionlorix = UICollectionView(frame: .zero, collectionViewLayout: LEALCompositionalLayoutlorix)
        LEALProfileCollectionlorix.backgroundColor = .clear
        LEALProfileCollectionlorix.delegate = self
        LEALProfileCollectionlorix.dataSource = self
        LEALProfileCollectionlorix.showsVerticalScrollIndicator = false
        
        LEALProfileCollectionlorix.register(LEALIdentityPulseCelllorix.self, forCellWithReuseIdentifier: "LEALIdentityPulseCelllorix")
        LEALProfileCollectionlorix.register(LEALUtilityPulseCelllorix.self, forCellWithReuseIdentifier: "LEALUtilityPulseCelllorix")
        
        LEALProfileCollectionlorix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALProfileCollectionlorix)
        
        NSLayoutConstraint.activate([
            LEALProfileCollectionlorix.topAnchor.constraint(equalTo: view.topAnchor,constant: 40),
            LEALProfileCollectionlorix.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LEALProfileCollectionlorix.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LEALProfileCollectionlorix.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func LEALCreateIdentityLayoutlorix() -> NSCollectionLayoutSection {
        let LEALItemSizelorix = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(360))
        let LEALItemlorix = NSCollectionLayoutItem(layoutSize: LEALItemSizelorix)
        let LEALGroupSizelorix = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(360))
        let LEALGrouplorix = NSCollectionLayoutGroup.vertical(layoutSize: LEALGroupSizelorix, subitems: [LEALItemlorix])
        return NSCollectionLayoutSection(group: LEALGrouplorix)
    }
    
    private func LEALCreateUtilityLayoutlorix() -> NSCollectionLayoutSection {
        let LEALItemSizelorix = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(60))
        let LEALItemlorix = NSCollectionLayoutItem(layoutSize: LEALItemSizelorix)
        let LEALGroupSizelorix = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(60))
        let LEALGrouplorix = NSCollectionLayoutGroup.vertical(layoutSize: LEALGroupSizelorix, subitems: [LEALItemlorix])
        let LEALSectionlorix = NSCollectionLayoutSection(group: LEALGrouplorix)
        LEALSectionlorix.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 120, trailing: 20)
        LEALSectionlorix.interGroupSpacing = 5
        return LEALSectionlorix
    }
    
    private func LEALRequestProfileSyncColorix() {
        LEALUtilityListlorix = [
            LEALUtilityPulseModellorix(LEALUtilityIconlorix: "doc.text.fill", LEALUtilityTitlelorix: "Order"),
            LEALUtilityPulseModellorix(LEALUtilityIconlorix: "music.note.list", LEALUtilityTitlelorix: "Product"),
            LEALUtilityPulseModellorix(LEALUtilityIconlorix: "location.fill", LEALUtilityTitlelorix: "Address"),
            LEALUtilityPulseModellorix(LEALUtilityIconlorix: "gift.fill", LEALUtilityTitlelorix: "Music Events"),
            LEALUtilityPulseModellorix(LEALUtilityIconlorix: "gearshape.fill", LEALUtilityTitlelorix: "Settings")
        ]
        LEALProfileCollectionlorix.reloadData()
    }
}

extension LEALUserStagelViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return LEALProfileSectionlorix.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let LEALSectionTypelorix = LEALProfileSectionlorix(rawValue: section) else { return 0 }
        return LEALSectionTypelorix == .LEALVocalIdentitylorix ? 1 : LEALUtilityListlorix.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let LEALSectionTypelorix = LEALProfileSectionlorix(rawValue: indexPath.section) else { return UICollectionViewCell() }
        if LEALSectionTypelorix == .LEALVocalIdentitylorix {
            let LEALCelllorix = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALIdentityPulseCelllorix", for: indexPath) as! LEALIdentityPulseCelllorix
            return LEALCelllorix
        } else {
            let LEALCelllorix = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALUtilityPulseCelllorix", for: indexPath) as! LEALUtilityPulseCelllorix
            LEALCelllorix.LEALConfigureUtilityPulseColorix(LEALUtilityListlorix[indexPath.item])
            return LEALCelllorix
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let LEALSubSonicVClorix = UIViewController()
        LEALSubSonicVClorix.view.backgroundColor = .black
        self.navigationController?.pushViewController(LEALSubSonicVClorix, animated: true)
    }
}
