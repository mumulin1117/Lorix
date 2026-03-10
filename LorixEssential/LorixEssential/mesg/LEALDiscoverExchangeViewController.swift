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
    private enum LEALExchangeMode { case message, event }
    private var LEALCurrentStateExchange: LEALExchangeMode = .message
    
//    private let LEALHeaderTitleVisualorix = UIImageView()
    private let LEALSegmentedHublorix = UIView()
    private let LEALMessageToggleBtnlorix = UIButton()
    private let LEALEventToggleBtnlorix = UIButton()
    
    private var LEALMainExchangeCollectionlorix: UICollectionView!
    
    private var LEALMessageSourceInfolorix: [LEALSignalMessagelorix] = []
    private var LEALEventSourceInfolorix: [LEALEventPulseModellorix] = []

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
        
        NSLayoutConstraint.activate([
            LEALStackHublorix.leadingAnchor.constraint(equalTo: LEALSegmentedHublorix.leadingAnchor),
            LEALStackHublorix.trailingAnchor.constraint(equalTo: LEALSegmentedHublorix.trailingAnchor),
            LEALStackHublorix.topAnchor.constraint(equalTo: LEALSegmentedHublorix.topAnchor),
            LEALStackHublorix.bottomAnchor.constraint(equalTo: LEALSegmentedHublorix.bottomAnchor),
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
       
        LEALMainExchangeCollectionlorix.reloadData()
    }
    
    private func LEALFetchRemoteSynchronizelorix() {
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.LEALMessageSourceInfolorix = (0...5).map { _ in LEALSignalMessagelorix(LEALSenderIdlorix: "1", LEALSenderNamelorix: "Liora", LEALAvatarUrllorix: "", LEALLastPhaselorix: "Sounds good.", LEALTimestampTextlorix: "09:20 AM", LEALUnreadPulseCountlorix: 0) }
            self.LEALEventSourceInfolorix = (0...5).map { _ in LEALEventPulseModellorix(LEALEventIdlorix: "2", LEALEventTitlelorix: "Mic Show", LEALCoverVisuallorix: "", LEALParticipantPreviewslorix: [], LEALTotalVibeslorix: "451+") }
            self.LEALMainExchangeCollectionlorix.reloadData()
        }
    }
}

extension LEALDiscoverExchangeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return LEALCurrentStateExchange == .message ? LEALMessageSourceInfolorix.count : LEALEventSourceInfolorix.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if LEALCurrentStateExchange == .message {
            let LEALCelllorix = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALMessageCelllorix", for: indexPath) as! LEALMessageInflowCollectionCelllorix
            LEALCelllorix.LEALRenderPulseInfolorix(LEALMessageSourceInfolorix[indexPath.item])
            return LEALCelllorix
        } else {
            let LEALCelllorix = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALEventCelllorix", for: indexPath) as! LEALEventGridCollectionCelllorix
            LEALCelllorix.LEALRenderEventVisualorix(LEALEventSourceInfolorix[indexPath.item])
            return LEALCelllorix
        }
    }
}
