//
//  LEALCommunityViewController.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/9.
//

import UIKit

class LEALCommunityViewController: UIViewController {
    private  lazy var LEALtComoptitle: UIImageView = {
        let bauiod = UIImageView.init(image: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "LEALtComoptitle"))
        bauiod.contentMode = .scaleAspectFit
        bauiod.translatesAutoresizingMaskIntoConstraints = false
        return bauiod
        
    }()
    lazy var LEALDAdd: UIButton = {
        let EALDbutton = UIButton()
        EALDbutton.setImage(LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "cireldLes"), for: .normal)
        EALDbutton.translatesAutoresizingMaskIntoConstraints = false
        return EALDbutton
    }()
    
    lazy var addCiref: UIButton = {
        let EALDbutton = UIButton()
        EALDbutton.setImage(LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "addCiref"), for: .normal)
        EALDbutton.translatesAutoresizingMaskIntoConstraints = false
        EALDbutton.addTarget(self, action: #selector(addCirefTolayer), for: .touchUpInside)
        return EALDbutton
    }()
    
   @objc func addCirefTolayer() {
        let ilser = PerformMomentController.init(plosiveBurstLor: .beatPulseRix)
        ilser.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ilser, animated: true)
    }
    
    private func LEALCreatePulseFeedSectionlorix() -> NSCollectionLayoutSection {
        let LEALPulseItemSizelorix = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .absolute(360)
            )
            let LEALPulseItemlorix = NSCollectionLayoutItem(layoutSize: LEALPulseItemSizelorix)
          
            let LEALPulseGroupSizelorix = NSCollectionLayoutSize(
                widthDimension: .absolute(UIScreen.main.bounds.width - 30),
                heightDimension: .absolute(360)
            )
        
        let LEALPulseGrouplorix = NSCollectionLayoutGroup.vertical(
                layoutSize: LEALPulseGroupSizelorix,
                subitems: [LEALPulseItemlorix]
            )
        
        let LEALPulseSectionlorix = NSCollectionLayoutSection(group: LEALPulseGrouplorix)
        LEALPulseSectionlorix.interGroupSpacing = 20
        
        
        LEALPulseSectionlorix.contentInsets = NSDirectionalEdgeInsets(
                top: 0,
                leading: 15,
                bottom: 100,
                trailing: 15
            )
        
       
            
            return LEALPulseSectionlorix
        
    }
    
    //横向滚动
    private func LEALCreateEchoCircleSectionlorix() -> NSCollectionLayoutSection {
        let LEALItemSizelorix = NSCollectionLayoutSize(widthDimension: .absolute(96), heightDimension: .absolute(102))
        let LEALItemlorix = NSCollectionLayoutItem(layoutSize: LEALItemSizelorix)
        
        let LEALGroupSizelorix = NSCollectionLayoutSize(
                widthDimension: .absolute(96),
                heightDimension: .absolute(102)
            )
        
        let LEALGrouplorix = NSCollectionLayoutGroup.horizontal(layoutSize: LEALGroupSizelorix, subitems: [LEALItemlorix])
       
        let LEALSectionlorix = NSCollectionLayoutSection(group: LEALGrouplorix)
        LEALSectionlorix.interGroupSpacing = 12
        
        LEALSectionlorix.orthogonalScrollingBehavior = .continuous
        LEALSectionlorix.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 20, trailing: 10)
        
        let LEALHeaderSizelorix = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .absolute(60)
            )
            let LEALHeaderlorix = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: LEALHeaderSizelorix,
                elementKind: UICollectionView.elementKindSectionFooter,
                alignment: .bottom
            )
        LEALHeaderlorix.pinToVisibleBounds = true
        LEALSectionlorix.boundarySupplementaryItems = [LEALHeaderlorix]
        
        return LEALSectionlorix
    }
    
    
    private var LEALMainDisplayViewlorix: UICollectionView!
    private var LEALActiveCategorylorix: Int = 0
    
    private var LEALTopEchoListlorix: Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    private var LEALMainPulseFeedlorix: Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    private let LEALCategoryHeaderlorix = UIView()
    private let LEALHotBtnlorix = UIButton()
    private let LEALNewBtnlorix = UIButton()
    private let LEALFollowBtnlorix = UIButton()
    private let LEALCategoryIndicatorlorix = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        let LEALlayersel = CAGradientLayer()
        LEALlayersel.colors = [UIColor(red: 0.32, green: 0.09, blue: 0.43, alpha: 1).cgColor, UIColor(red: 0.07, green: 0.04, blue: 0.23, alpha: 1).cgColor]
        LEALlayersel.locations = [0, 1]
        LEALlayersel.frame = view.bounds
        LEALlayersel.startPoint = CGPoint(x: 0.58, y: 0)
        LEALlayersel.endPoint = CGPoint(x: 1, y: 1)
        view.layer.addSublayer(LEALlayersel)
        view.addSubview(LEALtComoptitle)
        NSLayoutConstraint.activate([
            LEALtComoptitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
            LEALtComoptitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LEALtComoptitle.widthAnchor.constraint(equalToConstant: 250),
            LEALtComoptitle.heightAnchor.constraint(equalToConstant: 37)
        ])
        
        
        LEALAssembleAcousticEnvironmentlorix()
        LEALInitiateRhythmSession()
        LEALInitiateDataFetchlori()
        
        view.addSubview(addCiref)
        NSLayoutConstraint.activate([
            
            
            addCiref.widthAnchor.constraint(equalToConstant: 94),
            addCiref.heightAnchor.constraint(equalToConstant: 65),
            addCiref.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-8),
            addCiref.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80)
        ])
    }
    
    private func LEALAssembleAcousticEnvironmentlorix() {
        view.backgroundColor = UIColor(red: 0.05, green: 0.02, blue: 0.12, alpha: 1.0)
        
        let LEALDynamicLayoutlorix = UICollectionViewCompositionalLayout { (sectionIndex, _) -> NSCollectionLayoutSection? in
            return sectionIndex == 0 ? self.LEALCreateEchoCircleSectionlorix() : self.LEALCreatePulseFeedSectionlorix()
        }
        
        LEALMainDisplayViewlorix = UICollectionView(frame: .zero, collectionViewLayout: LEALDynamicLayoutlorix)
        LEALMainDisplayViewlorix.backgroundColor = .clear
        LEALMainDisplayViewlorix.delegate = self
        LEALMainDisplayViewlorix.dataSource = self
        LEALMainDisplayViewlorix.register(LEALEchoCircleCelllorix.self, forCellWithReuseIdentifier: "LEALEchoCircleCelllorix")
        LEALMainDisplayViewlorix.register(LEALPulseFeedCelllorix.self, forCellWithReuseIdentifier: "LEALPulseFeedCelllorix")
        LEALMainDisplayViewlorix.translatesAutoresizingMaskIntoConstraints = false
        
        LEALMainDisplayViewlorix.register(LEALCategoryHeaderlorixView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "LEALCategoryHeaderlorixView")
        
        view.addSubview(LEALMainDisplayViewlorix)
  
        
        NSLayoutConstraint.activate([
            LEALMainDisplayViewlorix.topAnchor.constraint(equalTo: LEALtComoptitle.bottomAnchor,constant: 15),
            LEALMainDisplayViewlorix.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LEALMainDisplayViewlorix.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LEALMainDisplayViewlorix.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
          
        ])
    }
    
 

    @objc private func LEALCategoryDidSwitchlorix(_ sender: UIButton) {
        LEALActiveCategorylorix = sender.tag
        LEALInitiateDataFetchlori()
    }

   
}
extension LEALCommunityViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section == 0 ? LEALTopEchoListlorix.count : LEALMainPulseFeedlorix.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let LEALEchoCelllorix = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALEchoCircleCelllorix", for: indexPath) as! LEALEchoCircleCelllorix
            let LEALArtistDatalorix = LEALTopEchoListlorix[indexPath.item]
            
            LEALEchoCelllorix.LEALUpdateEchoVisualslorix(LEALArtistDatalorix)
            return LEALEchoCelllorix
        } else {
            let LEALPulseCelllorix = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALPulseFeedCelllorix", for: indexPath) as! LEALPulseFeedCelllorix
            let LEALContentDatalorix = LEALMainPulseFeedlorix[indexPath.item]
            LEALPulseCelllorix.LEALConfigurePulseCelllorix(LEALContentDatalorix, ishot: self.LEALActiveCategorylorix == 0)
            LEALPulseCelllorix.LEALDAdd.tag = indexPath.row
            LEALPulseCelllorix.LEALDAdd.addTarget(self, action: #selector(withIneter(uedg:) ), for: .touchUpInside)
            
            LEALPulseCelllorix.LEALMoreOptionslorix.addTarget(self, action: #selector(LEALAlertYui), for: .touchUpInside)
            return LEALPulseCelllorix
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            guard let LEALSelectedEcholorix = LEALTopEchoListlorix[indexPath.row]["airflowControlLor"] as? Int else { return  }
           
            pureFilserpick(userLEAL: LEALSelectedEcholorix)
        } else {
            let LEALSelectedPulselorix = LEALMainPulseFeedlorix[indexPath.item]["spatialAwarenessLor"] as? Int ?? 0
            let ilser = PerformMomentController.init(plosiveBurstLor: .vocalNatureLor,aspirate: "\(LEALSelectedPulselorix)")
            ilser.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(ilser, animated: true)
        }
    }
    
    @objc func withIneter(uedg:UIButton)  {
        if let id =  LEALMainPulseFeedlorix[uedg.tag]["beatCompositionRix"] as? Int{
            self.pureFilserpick(userLEAL: id)
        }
        
    }
    func pureFilserpick(userLEAL: Int) {
        let ilser = PerformMomentController.init(plosiveBurstLor: .beatAudioLor,aspirate: "\(userLEAL)")
        ilser.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ilser, animated: true)
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionFooter {
            let LEALHeaderlorix = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "LEALCategoryHeaderlorixView", for: indexPath) as! LEALCategoryHeaderlorixView
            LEALHeaderlorix.LEALActionCallbacklorix = { [weak self] LEALTaglorix in
                self?.LEALCategoryDidSwitchlorix(LEALTaglorix)
            }
            return LEALHeaderlorix
        }
        return UICollectionReusableView()
    }
    
    private func LEALCategoryDidSwitchlorix(_ LEALTaglorix: Int) {
        self.LEALActiveCategorylorix = LEALTaglorix
       
        self.LEALInitiateDataFetchlori()
      
    }
}


extension LEALCommunityViewController{
    
    @objc private func LEALInitiateRhythmSession() {
        LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALBeginVocalSamplinglorix()
        
        LEALAcalSignatureLorrix.nasalPassageLor(vocalFoldRix: "/rqhazshz/mwdlfinpresrggf", lungCapacityLor: ["acousticTextureRix":"64343767"]) { rhythmicStemLor in
            LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALTerminateResonancelorix(isPositive: true, message: "")
            
            
            guard let trendWeave = rhythmicStemLor as? [String: Any],
                  let craftAura = trendWeave[aksingLEALE] as? Array<[String: Any]>
            else {
                return
            }
  
            self.LEALTopEchoListlorix = craftAura
            self.LEALMainDisplayViewlorix.reloadSections(IndexSet.init(integer: 0))
        } articulationPointLor: { vocalCoreLor in

          
        }

        
        
        
        
        
    }
    
    
    @objc private func LEALInitiateDataFetchlori() {
        
        LEALAcalSignatureLorrix.nasalPassageLor(vocalFoldRix: "/mclnmqtgoz/ryfsmzxhbn", lungCapacityLor: ["sonicDraftRix":"64343767","frequencyResponseLor":1,"dynamicRangeRix":20,"rhythmicCadenceLor":LEALActiveCategorylorix]) { rhythmicStemLor in
             guard let trendWeave = rhythmicStemLor as? [String: Any],
                  let craftAura = trendWeave[aksingLEALE] as? Array<[String: Any]>
            else {
                return
            }
  
            self.LEALMainPulseFeedlorix = craftAura
            self.LEALMainDisplayViewlorix.reloadSections(IndexSet.init(integer: 1))
        } articulationPointLor: { vocalCoreLor in
           
        }

    }
}
