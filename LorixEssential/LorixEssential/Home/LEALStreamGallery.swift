//
//  LEALStreamGallery.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/6.
//

import UIKit
import Foundation

class LEALStreamGallery: UIViewController, LEALioalHeaderDelegate {
    func pureFilserpick(userLEAL: Int) {
        let ilser = PerformMomentController.init(stageWave: .urbanPerformer,streetSoul: "\(userLEAL)")
        ilser.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ilser, animated: true)
    }
    
    private  lazy var LEALtoptitle: UIImageView = {
        let bauiod = UIImageView.init(image: UIImage.init(named: "Lorixcielc"))
        bauiod.contentMode = .scaleAspectFit
        return bauiod
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        LEALSetupAcousticStage()
        LEALInitiateDataFetchlori()
        LEALInitiateRhythmSession()
        
    }
    
    private var LEALDashboardViewlori: UICollectionView!
       
    
    private var LEALLiveFeedCachelori: Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
   
  
    private  var LEALheader:LEALioalHeader?
    
        
        
    private func LEALSetupAcousticStage() {
        let LEALlayersel = CAGradientLayer()
        LEALlayersel.colors = [UIColor(red: 0.32, green: 0.09, blue: 0.43, alpha: 1).cgColor, UIColor(red: 0.07, green: 0.04, blue: 0.23, alpha: 1).cgColor]
        LEALlayersel.locations = [0, 1]
        LEALlayersel.frame = view.bounds
        LEALlayersel.startPoint = CGPoint(x: 0.58, y: 0)
        LEALlayersel.endPoint = CGPoint(x: 1, y: 1)
        view.layer.addSublayer(LEALlayersel)
        LEALtoptitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALtoptitle)
        NSLayoutConstraint.activate([
            LEALtoptitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
            LEALtoptitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LEALtoptitle.widthAnchor.constraint(equalToConstant: 125),
            LEALtoptitle.heightAnchor.constraint(equalToConstant: 37)
        ])
        
        let our = UICollectionViewFlowLayout.init()
        our.itemSize = CGSize(width: UIScreen.main.bounds.width - 30, height: 180)
        our.minimumInteritemSpacing = 10
        our.minimumInteritemSpacing = 10
        
        LEALDashboardViewlori = UICollectionView(frame: .zero, collectionViewLayout: our)
        LEALDashboardViewlori.backgroundColor = .clear
        LEALDashboardViewlori.delegate = self
        LEALDashboardViewlori.dataSource = self
        LEALDashboardViewlori.register(LEALioalHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "LEALioalHeader")
        
        LEALDashboardViewlori.register(LEALSonicFeedCelllori.self, forCellWithReuseIdentifier: "LEALSonicFeedCelllori")
        LEALDashboardViewlori.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(LEALDashboardViewlori)
        
        NSLayoutConstraint.activate([
            LEALDashboardViewlori.topAnchor.constraint(equalTo: LEALtoptitle.bottomAnchor,constant: 15),
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
    

}
extension LEALStreamGallery: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int { return 1 }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 160 + 90 + 25 + 31 + 7 + 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  LEALLiveFeedCachelori.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            
        let LEALCelllori = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALSonicFeedCelllori", for: indexPath) as! LEALSonicFeedCelllori
        LEALCelllori.LEALConfigureSonicEntrylori(LEALLiveFeedCachelori[indexPath.item])
        
        LEALCelllori.LEALMoreActionBtnlori.addTarget(self, action: #selector(LEALAlertYui), for: .touchUpInside)
        return LEALCelllori
    
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      let ai =  LEALLiveFeedCachelori[indexPath.row]
        
        let licaid = ai["soundExpeditionRix"] as? Int ?? 0
        
        let liuseidcaid = ai["vocalJourneyLor"] as? Int ?? 0//userid
        
     let isliva =   ((ai["beatGuideRix"] as? Int) == -1)
        
        var pagestr = PerformMomentController.init(stageWave: .creativeMotion,streetSoul: "\(licaid)&userId=\(liuseidcaid)")
        if isliva == false {
            pagestr = PerformMomentController.init(stageWave: .artFusion,streetSoul: "\(licaid)")
        }
        pagestr.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(pagestr, animated: true)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let kinder = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "LEALioalHeader", for: indexPath) as!  LEALioalHeader
            kinder.pureFilserpick = self
            self.LEALheader = kinder
            kinder.LEALGostrem.addTarget(self, action: #selector(LEALGostremYui), for: .touchDown)
            return kinder
        }
        return LEALioalHeader()
    }
    
    @objc func LEALGostremYui()  {
        let pagestr = PerformMomentController.init(stageWave: .performMood)
        
        pagestr.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(pagestr, animated: true)
    }
}



extension UIViewController{
    @objc func LEALAlertYui()  {//report
        let pagestr = PerformMomentController.init(stageWave: .streetRhythm)
        
        pagestr.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(pagestr, animated: true)
    }
}

extension LEALStreamGallery{
    //用户
    @objc private func LEALInitiateRhythmSession() {
        LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALBeginVocalSamplinglorix()
        
        LEALVisualEchoPulseColorix.LEALExecuteSonicRequestlorix(performLens: "/rqhazshz/mwdlfinpresrggf", creativeMoment: ["acousticTextureRix":"64343767"]) { rhythmicStemLor in
            LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALTerminateResonancelorix(isPositive: true, message: "")
          
            guard let trendWeave = rhythmicStemLor as? [String: Any],
                  let craftAura = trendWeave["data"] as? Array<[String: Any]>
            else {
                return
            }
  
            self.LEALheader?.pureFilser = craftAura
            self.LEALheader?.LEALDashboardViewlori.reloadData()
        } urbanBeat: { vocalCoreLor in

          
        }

        
        
        
        
        
    }
    
    
    @objc private func LEALInitiateDataFetchlori() {
        
        LEALVisualEchoPulseColorix.LEALExecuteSonicRequestlorix(performLens: "/gcgwnuz/yrgdx", creativeMoment: ["audioExplorationLor":"64343767","rhythmicInnovationLor":1,"sonicDiscoveryRix":20]) { rhythmicStemLor in
             guard let trendWeave = rhythmicStemLor as? [String: Any],
                  let craftAura = trendWeave["data"] as? Array<[String: Any]>
            else {
                return
            }
  
            self.LEALLiveFeedCachelori = craftAura
            self.LEALDashboardViewlori.reloadData()
        } urbanBeat: { vocalCoreLor in
           
        }

    }
}
