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
        let ilser = PerformMomentController.init(plosiveBurstLor: .beatAudioLor,aspirate: "\(userLEAL)")
        ilser.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ilser, animated: true)
    }
    
    private  lazy var LEALtoptitle: UIImageView = {
        let bauiod = UIImageView.init(image: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "Lorixcielc"))
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
        
        var pagestr = PerformMomentController.init(plosiveBurstLor: .acousticVisionRix,aspirate: "\(licaid)&userId=\(liuseidcaid)")
        if isliva == false {
            pagestr = PerformMomentController.init(plosiveBurstLor: .soundTouchRix,aspirate: "\(licaid)")
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
        let pagestr = PerformMomentController.init(plosiveBurstLor: .rhythmFeelLor)
        
        pagestr.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(pagestr, animated: true)
    }
}



extension UIViewController{
    @objc func LEALAlertYui()  {//report
        let pagestr = PerformMomentController.init(plosiveBurstLor: .vocalFlowRix)
        
        pagestr.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(pagestr, animated: true)
    }
}

extension LEALStreamGallery: LEALSonicResponseProtocollorix {
    
    @objc  func LEALInitiateRhythmSession() {
        
        let LEALVisualPulseColorix = LEALWaveformMonitorlorix.LEALVisualInflowlorix
        LEALVisualPulseColorix.LEALBeginVocalSamplinglorix()
     
        let LEALSessionPathColorix = "/rqhazshz" + "/mwdlfinpresrggf"
        let LEALInitialPayloadColorix = ["acousticTextureRix": "64343767"]
        
        LEALSonicDataAdapterlorix.LEALSharedEnginelorix.LEALExecuteRhythmPipelinelorix(
            path: LEALSessionPathColorix,
            payload: LEALInitialPayloadColorix
        ) { [weak self] LEALResonancelorix in
            DispatchQueue.main.async {
                
                LEALVisualPulseColorix.LEALTerminateResonancelorix(isPositive: true, message: "")
                self?.LEALHandlePulseSyncColorix(LEALResonancelorix, targetIndex: 0)
            }
        }
    }
    
    @objc  func LEALInitiateDataFetchlori() {
       
        let LEALDataStreamPathlorix = ["/", "g", "c", "g", "w", "n", "u", "z", "/", "y", "r", "g", "d", "x"].joined()
        let LEALSearchMetricslorix: [String: Any] = [
            "audioExplorationLor": "64343767",
            "rhythmicInnovationLor": 1,
            "sonicDiscoveryRix": 20
        ]
        
        LEALSonicDataAdapterlorix.LEALSharedEnginelorix.LEALExecuteRhythmPipelinelorix(
            path: LEALDataStreamPathlorix,
            payload: LEALSearchMetricslorix
        ) { [weak self] LEALResonancelorix in
            DispatchQueue.main.async {
                self?.LEALHandlePulseSyncColorix(LEALResonancelorix, targetIndex: 1)
            }
        }
    }
    
    
    func LEALHandlePulseSyncColorix(_ LEALDataStreamlorix: Array<[String: Any]>?, targetIndex: Int) {
        guard let LEALValidPulseColorix = LEALDataStreamlorix else { return }
        
        if targetIndex == 0 {
           
            self.LEALheader?.pureFilser = LEALValidPulseColorix
            self.LEALheader?.LEALDashboardViewlori.reloadData()
        } else {
           
            self.LEALLiveFeedCachelori = LEALValidPulseColorix
            self.LEALDashboardViewlori.reloadData()
        }
        
       
        let LEALGeneratorlorix = UISelectionFeedbackGenerator()
        LEALGeneratorlorix.selectionChanged()
    }
}
