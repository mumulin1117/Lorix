//
//  LEALDiscoverExchangeViewController.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import UIKit

class LEALDiscoverExchangeViewController: UIViewController {
    private  lazy var LEALtoptitle: UIImageView = {
        let bauiod = UIImageView.init(image: UIImage.init(named: "LEALDMessage"))
        bauiod.contentMode = .scaleAspectFit
        return bauiod
        
    }()
    
    
    lazy var addCiref: UIButton = {
        let EALDbutton = UIButton()
        EALDbutton.setImage(UIImage.init(named: "addCiref"), for: .normal)
        EALDbutton.translatesAutoresizingMaskIntoConstraints = false
        EALDbutton.addTarget(self, action: #selector(addCirefTolayer), for: .touchUpInside)
        return EALDbutton
    }()
    
   @objc func addCirefTolayer() {
        let ilser = PerformMomentController.init(plosiveBurstLor: .rhythmicRefractionLor)
        ilser.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(ilser, animated: true)
    }
    
    private enum LEALExchangeMode { case message, event }
    private var LEALCurrentStateExchange: LEALExchangeMode = .message
    
    private let LEALSegmentedHublorix = UIView()
    private let LEALMessageToggleBtnlorix = UIButton()
    private let LEALEventToggleBtnlorix = UIButton()
    
    private var LEALMainExchangeCollectionlorix: UICollectionView!
    
    private var LEALMessageSourceInfolorix: Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    

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
        LEALtoptitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALtoptitle)
        NSLayoutConstraint.activate([
            LEALtoptitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
            LEALtoptitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LEALtoptitle.widthAnchor.constraint(equalToConstant: 224),
            LEALtoptitle.heightAnchor.constraint(equalToConstant: 37)
        ])
        LEALInitializeAcousticLayerlorix()
        LEALConfigureDisplayNodelorix()
        LEALFetchRemoteSynchronizelorix()
    }
    
    private func LEALInitializeAcousticLayerlorix() {
         
        LEALSegmentedHublorix.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        LEALSegmentedHublorix.layer.cornerRadius = 25
        LEALSegmentedHublorix.layer.borderWidth = 1
        LEALSegmentedHublorix.layer.borderColor = UIColor.white.withAlphaComponent(0.2).cgColor
        LEALSegmentedHublorix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALSegmentedHublorix)
        LEALAssembleCollectionNodelorix()
        LEALConfigureToggleSystemlorix()
        
        
    
    }
    private func LEALAssembleCollectionNodelorix() {
       
        let LEALDynamicLayoutlorix = UICollectionViewCompositionalLayout { [weak self] (sectionIndex, _) -> NSCollectionLayoutSection? in
            guard let self = self else { return nil }
            return self.LEALCurrentStateExchange == .message ? self.LEALCreateMessageFlowLayoutlorix() : self.LEALCreateEventGridLayoutlorix()
        }
        
        LEALMainExchangeCollectionlorix = UICollectionView(frame: .zero, collectionViewLayout: LEALDynamicLayoutlorix)
        LEALMainExchangeCollectionlorix.backgroundColor = .clear
        LEALMainExchangeCollectionlorix.delegate = self
        LEALMainExchangeCollectionlorix.dataSource = self
        
        LEALMainExchangeCollectionlorix.register(LEALMessageInflowCollectionCelllorix.self, forCellWithReuseIdentifier: "LEALMessageCelllorix")
        LEALMainExchangeCollectionlorix.register(LEALEventGridCollectionCelllorix.self, forCellWithReuseIdentifier: "LEALEventCelllorix")
        
        LEALMainExchangeCollectionlorix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALMainExchangeCollectionlorix)
        
    }
    
    private func LEALCreateMessageFlowLayoutlorix() -> NSCollectionLayoutSection {
        let LEALItemSizelorix = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(90))
        let LEALItemlorix = NSCollectionLayoutItem(layoutSize: LEALItemSizelorix)
        
        let LEALGroupSizelorix = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(90))
        let LEALGrouplorix = NSCollectionLayoutGroup.vertical(layoutSize: LEALGroupSizelorix, subitems: [LEALItemlorix])
        
        return NSCollectionLayoutSection(group: LEALGrouplorix)
        
    }
    private func LEALCreateEventGridLayoutlorix() -> NSCollectionLayoutSection {
     
        let LEALItemSizelorix = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.0))
        let LEALItemlorix = NSCollectionLayoutItem(layoutSize: LEALItemSizelorix)
        LEALItemlorix.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        
        let LEALGroupSizelorix = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(300))
        let LEALGrouplorix = NSCollectionLayoutGroup.horizontal(layoutSize: LEALGroupSizelorix, subitems: [LEALItemlorix])
        
        let LEALSectionlorix = NSCollectionLayoutSection(group: LEALGrouplorix)
        LEALSectionlorix.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 7, bottom: 100, trailing: 7)
        return LEALSectionlorix
        
    }
    @objc private func LEALDidSwitchToMessagelorix() {
            LEALCurrentStateExchange = .message
            LEALUpdateModeUIVisualorix()
        }
        
        @objc private func LEALDidSwitchToEventlorix() {
            LEALCurrentStateExchange = .event
            LEALUpdateModeUIVisualorix()
        }
        
    
    private func LEALConfigureDisplayNodelorix() {
        let LEALSafeToplorix = view.safeAreaLayoutGuide.topAnchor
        NSLayoutConstraint.activate([
              
            LEALSegmentedHublorix.topAnchor.constraint(equalTo: LEALtoptitle.bottomAnchor, constant: 20),
            LEALSegmentedHublorix.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LEALSegmentedHublorix.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            LEALSegmentedHublorix.heightAnchor.constraint(equalToConstant: 50),
            
            LEALMainExchangeCollectionlorix.topAnchor.constraint(equalTo: LEALSegmentedHublorix.bottomAnchor, constant: 15),
            LEALMainExchangeCollectionlorix.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LEALMainExchangeCollectionlorix.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LEALMainExchangeCollectionlorix.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        LEALUpdateModeUIVisualorix()
    }
    
    private func LEALConfigureToggleSystemlorix() {
        LEALMessageToggleBtnlorix.setTitle("Message", for: .normal)
        LEALEventToggleBtnlorix.setTitle("Events", for: .normal)
        
        let LEALToggleslorix = [LEALMessageToggleBtnlorix, LEALEventToggleBtnlorix]
        let LEALStackHublorix = UIStackView(arrangedSubviews: LEALToggleslorix)
        LEALStackHublorix.distribution = .fillEqually
        LEALStackHublorix.translatesAutoresizingMaskIntoConstraints = false
        LEALSegmentedHublorix.addSubview(LEALStackHublorix)
        view.addSubview(self.addCiref)
        NSLayoutConstraint.activate([
            LEALStackHublorix.leadingAnchor.constraint(equalTo: LEALSegmentedHublorix.leadingAnchor),
            LEALStackHublorix.trailingAnchor.constraint(equalTo: LEALSegmentedHublorix.trailingAnchor),
            LEALStackHublorix.topAnchor.constraint(equalTo: LEALSegmentedHublorix.topAnchor),
            LEALStackHublorix.bottomAnchor.constraint(equalTo: LEALSegmentedHublorix.bottomAnchor),
            
            addCiref.widthAnchor.constraint(equalToConstant: 94),
            addCiref.heightAnchor.constraint(equalToConstant: 65),
            addCiref.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-8),
            addCiref.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80)
        ])
        
        LEALMessageToggleBtnlorix.addTarget(self, action: #selector(LEALDidSwitchToMessagelorix), for: .touchUpInside)
        LEALEventToggleBtnlorix.addTarget(self, action: #selector(LEALDidSwitchToEventlorix), for: .touchUpInside)
    }
    
   
    
    private func LEALUpdateModeUIVisualorix() {
        let LEALIsMessagelorix = LEALCurrentStateExchange == .message
        LEALtoptitle.image = UIImage(named: LEALIsMessagelorix ? "LEALDMessage" : "LEALDDiscover")
        
        LEALMessageToggleBtnlorix.backgroundColor = LEALIsMessagelorix ? UIColor(red: 0.25, green: 0.02, blue: 0.54, alpha: 1) : .clear
        LEALMessageToggleBtnlorix.layer.cornerRadius = 22
        LEALEventToggleBtnlorix.backgroundColor = !LEALIsMessagelorix ? UIColor(red: 0.25, green: 0.02, blue: 0.54, alpha: 1) : .clear
     
        LEALMainExchangeCollectionlorix.setCollectionViewLayout(LEALMainExchangeCollectionlorix.collectionViewLayout, animated: true)
       
        LEALFetchRemoteSynchronizelorix()
    }
    
    
}

extension LEALDiscoverExchangeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return LEALMessageSourceInfolorix.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if LEALCurrentStateExchange == .message {
            
           
            if let learID = LEALMessageSourceInfolorix[indexPath.row]["nanoBeatLor"] as? Int{
                let pagestr = PerformMomentController.init(plosiveBurstLor: .rhythmicEarLor,aspirate: "\(learID)")
                
                pagestr.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(pagestr, animated: true)
                
                return
            }
           
            
        }else{
            if let learID = LEALMessageSourceInfolorix[indexPath.row]["waveRhythmLor"] as? Int{
                let pagestr = PerformMomentController.init(plosiveBurstLor: .acousticPrismRix,aspirate: "\(learID)")
                
                pagestr.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(pagestr, animated: true)
            }
            
        }
        
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if LEALCurrentStateExchange == .message {
            let LEALCelllorix = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALMessageCelllorix", for: indexPath) as! LEALMessageInflowCollectionCelllorix
            LEALCelllorix.LEALRenderPulseInfolorix(LEALMessageSourceInfolorix[indexPath.row])
            return LEALCelllorix
        } else {
            let LEALCelllorix = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALEventCelllorix", for: indexPath) as! LEALEventGridCollectionCelllorix
            LEALCelllorix.LEALRenderEventVisualorix(LEALMessageSourceInfolorix[indexPath.row])
            return LEALCelllorix
        }
    }
}



extension LEALDiscoverExchangeViewController{
    
    @objc private func LEALFetchRemoteSynchronizelorix() {
        LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALBeginVocalSamplinglorix()
        
        var LEALPath = ""
        
        var leaPara = ["":""]
        
        if LEALCurrentStateExchange == .message {
            LEALPath = "/tofeofuzodlz/mdgwkiamsk"
            leaPara = ["soundScaffoldLor":"64343767"]
        }else{
            LEALPath = "/rkxeagzbveqsudz/ybktuflugzarc"
            leaPara = ["beatAudioLor":"64343767"]
            
        }
        
        LEALAcalSignatureLorrix.nasalPassageLor(vocalFoldRix: LEALPath, lungCapacityLor: leaPara) { rhythmicStemLor in
            LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALTerminateResonancelorix(isPositive: true, message: "")
          
            guard let trendWeave = rhythmicStemLor as? [String: Any],
                  let craftAura = trendWeave["data"] as? Array<[String: Any]>
            else {
                return
            }
            if self.LEALCurrentStateExchange == .message {
                self.LEALMessageSourceInfolorix = craftAura.map { dix in
                    
                    if let LEALeadt = (dix["vocalGrainLor"] as? Array<[String:Any]>)?.first{
                        LEALeadt
                    }else{[:]}
                    
                    
                }
            }else{
                self.LEALMessageSourceInfolorix = craftAura
            }
            
            
            self.LEALMainExchangeCollectionlorix.reloadData()
        } articulationPointLor: { vocalCoreLor in
            LEALWaveformMonitorlorix.LEALVisualInflowlorix.LEALTerminateResonancelorix(isPositive: true, message: "")
          
        }

        
        
        
        
        
    }
    
}
