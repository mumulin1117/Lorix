//
//  LEALStreamGallery.swift
//  LorixEssential
//
//  Created by mumu on 2026/3/6.
//

import UIKit
import Foundation

struct LEALRhythmArtistlori: Codable {
    let LEALArtistIdentitylori: String
    let LEALArtistAvatarlori: String
    let LEALFollowerCountlori: String
    let LEALCaptureCountlori: String
}

struct LEALSonicLiveEntrylori: Codable {
    let LEALStreamTitlelori: String
    let LEALViewerCountlori: String
    let LEALHostNamelori: String
    let LEALHostAvatarlori: String
    let LEALCoverImagelori: String
}
class LEALStreamGallery: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        LEALSetupAcousticStage()
        LEALInitiateDataFetchlori()
    }
    
    private var LEALDashboardViewlori: UICollectionView!
       
    private var LEALArtistSourceCachelori: [LEALRhythmArtistlori] = []
    private var LEALLiveFeedCachelori: [LEALSonicLiveEntrylori] = []
   
     
        
        
    private func LEALSetupAcousticStage() {
        view.backgroundColor = UIColor(red: 0.05, green: 0.02, blue: 0.12, alpha: 1.0)
        
        let LEALLayoutlori = UICollectionViewCompositionalLayout { (sectionIndex, _) -> NSCollectionLayoutSection? in
            return sectionIndex == 0 ? self.LEALGenerateHeroCarousel() : self.LEALGenerateVerticalFeed()
        }
        
        LEALDashboardViewlori = UICollectionView(frame: .zero, collectionViewLayout: LEALLayoutlori)
        LEALDashboardViewlori.backgroundColor = .clear
        LEALDashboardViewlori.delegate = self
        LEALDashboardViewlori.dataSource = self
        LEALDashboardViewlori.register(LEALArtistCarouselCelllori.self, forCellWithReuseIdentifier: "LEALArtistCarouselCelllori")
        LEALDashboardViewlori.register(LEALSonicFeedCelllori.self, forCellWithReuseIdentifier: "LEALSonicFeedCelllori")
        LEALDashboardViewlori.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(LEALDashboardViewlori)
        
        NSLayoutConstraint.activate([
            LEALDashboardViewlori.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            LEALDashboardViewlori.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LEALDashboardViewlori.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LEALDashboardViewlori.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func LEALGenerateHeroCarousel() -> NSCollectionLayoutSection {
        let LEALItemSizelori = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .fractionalHeight(1.0))
        let LEALItemlori = NSCollectionLayoutItem(layoutSize: LEALItemSizelori)
        LEALItemlori.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15)
        
        let LEALGroupSizelori = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(view.bounds.height * 0.18))
        let LEALGrouplori = NSCollectionLayoutGroup.horizontal(layoutSize: LEALGroupSizelori, subitems: [LEALItemlori])
        
        let LEALSectionlori = NSCollectionLayoutSection(group: LEALGrouplori)
        LEALSectionlori.orthogonalScrollingBehavior = .groupPagingCentered
        LEALSectionlori.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0)
        return LEALSectionlori
    }
    
        
    private func LEALGenerateVerticalFeed() -> NSCollectionLayoutSection {
        let LEALItemSizelori = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(240))
        let LEALItemlori = NSCollectionLayoutItem(layoutSize: LEALItemSizelori)
        LEALItemlori.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)
        
        let LEALGroupSizelori = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(240))
        let LEALGrouplori = NSCollectionLayoutGroup.vertical(layoutSize: LEALGroupSizelori, subitems: [LEALItemlori])
        
        let LEALSectionlori = NSCollectionLayoutSection(group: LEALGrouplori)
        return LEALSectionlori
    }
    
    private func LEALInitiateDataFetchlori() {
        // Simulation of network request
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.LEALArtistSourceCachelori = [
                LEALRhythmArtistlori(LEALArtistIdentitylori: "Mitchell", LEALArtistAvatarlori: "avatar1", LEALFollowerCountlori: "2.9k", LEALCaptureCountlori: "362")
            ]
            self.LEALLiveFeedCachelori = [
                LEALSonicLiveEntrylori(LEALStreamTitlelori: "Freestyle Beatstorm Live", LEALViewerCountlori: "20.6k", LEALHostNamelori: "Dora", LEALHostAvatarlori: "avatar2", LEALCoverImagelori: "cover1"),
                LEALSonicLiveEntrylori(LEALStreamTitlelori: "Rhythm Waves Tonight", LEALViewerCountlori: "15.4k", LEALHostNamelori: "Sync", LEALHostAvatarlori: "avatar3", LEALCoverImagelori: "cover2")
            ]
            self.LEALDashboardViewlori.reloadData()
        }
    }

}
extension LEALStreamGallery: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int { return 2 }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section == 0 ? LEALArtistSourceCachelori.count : LEALLiveFeedCachelori.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let LEALCelllori = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALArtistCarouselCelllori", for: indexPath) as! LEALArtistCarouselCelllori
            LEALCelllori.LEALConfigureAcousticCelllori(LEALArtistSourceCachelori[indexPath.item])
            return LEALCelllori
        } else {
            let LEALCelllori = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALSonicFeedCelllori", for: indexPath) as! LEALSonicFeedCelllori
            LEALCelllori.LEALConfigureSonicEntrylori(LEALLiveFeedCachelori[indexPath.item])
            return LEALCelllori
        }
    }
}

