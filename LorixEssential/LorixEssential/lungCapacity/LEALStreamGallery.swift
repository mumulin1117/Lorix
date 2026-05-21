//
//  LEALStreamGallery.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/6.
//

import UIKit
import Foundation
//pasword  23456
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
    private var LEALRoomPassGateLorix: LEALRoomPassGateViewlorix?
    
        
        
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
        let LEALRoomPulseLorix = LEALLiveFeedCachelori[indexPath.row]
        LEALPresentRoomPassGateLorix(for: LEALRoomPulseLorix)
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

private extension LEALStreamGallery {
    func LEALPresentRoomPassGateLorix(for LEALRoomPulseLorix: Dictionary<String, Any>) {
        view.endEditing(true)
        LEALRoomPassGateLorix?.removeFromSuperview()
        let LEALGateLorix = LEALRoomPassGateViewlorix()
        LEALGateLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALGateLorix.LEALCancelPulseLorix = { [weak self] in
            self?.LEALRoomPassGateLorix?.LEALFadeOutBeatLorix()
            self?.LEALRoomPassGateLorix = nil
        }
        LEALGateLorix.LEALUnlockPulseLorix = { [weak self] LEALPasswordLorix in
            guard let self else { return }
            if LEALPasswordLorix == "23456" {
                self.LEALRoomPassGateLorix?.LEALFadeOutBeatLorix()
                self.LEALRoomPassGateLorix = nil
                self.LEALEnterStreamRoomLorix(with: LEALRoomPulseLorix)
            } else {
                LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: "Password error", on: self.view)
                self.LEALRoomPassGateLorix?.LEALShakeInputBeatLorix()
            }
        }
        view.addSubview(LEALGateLorix)
        NSLayoutConstraint.activate([
            LEALGateLorix.topAnchor.constraint(equalTo: view.topAnchor),
            LEALGateLorix.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LEALGateLorix.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LEALGateLorix.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        LEALRoomPassGateLorix = LEALGateLorix
        LEALGateLorix.LEALFadeInBeatLorix()
    }
    
    func LEALEnterStreamRoomLorix(with LEALRoomPulseLorix: Dictionary<String, Any>) {
        let LEALSoundExpeditionLorix = LEALRoomPulseLorix["soundExpeditionRix"] as? Int ?? 0
        let LEALVocalJourneyLorix = LEALRoomPulseLorix["vocalJourneyLor"] as? Int ?? 0
        let LEALIsLiveRoomLorix = ((LEALRoomPulseLorix["beatGuideRix"] as? Int) == -1)
        var LEALPageLorix = PerformMomentController.init(plosiveBurstLor: .acousticVisionRix, aspirate: "\(LEALSoundExpeditionLorix)&userId=\(LEALVocalJourneyLorix)")
        if LEALIsLiveRoomLorix == false {
            LEALPageLorix = PerformMomentController.init(plosiveBurstLor: .soundTouchRix, aspirate: "\(LEALSoundExpeditionLorix)")
        }
        LEALPageLorix.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(LEALPageLorix, animated: true)
    }
}

private final class LEALRoomPassGateViewlorix: UIView, UITextFieldDelegate {
    var LEALUnlockPulseLorix: ((String) -> Void)?
    var LEALCancelPulseLorix: (() -> Void)?
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
    }
    private let LEALDimBeatLorix = UIView()
    private let LEALPanelVisualLorix = UIImageView(image: UIImage(named: "LEALRoomPassPanelLorix"))
    private let LEALLockVisualLorix = UIImageView(image: UIImage(named: "LEALRoomPassLockLorix"))
    private let LEALTitleLabelLorix = UILabel()
    private let LEALInputShellLorix = UIView()
    private let LEALPasswordFieldLorix = UITextField()
    private let LEALEnterButtonLorix = UIButton()
    private let LEALCloseButtonLorix = UIButton(type: .custom)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        LEALBuildGateBeatLorix()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func LEALBuildGateBeatLorix() {
        alpha = 0
        backgroundColor = .clear
        
        LEALDimBeatLorix.backgroundColor = UIColor.black.withAlphaComponent(0.42)
        LEALDimBeatLorix.translatesAutoresizingMaskIntoConstraints = false
        addSubview(LEALDimBeatLorix)
        
        LEALPanelVisualLorix.contentMode = .scaleToFill
        LEALPanelVisualLorix.isUserInteractionEnabled = true
        LEALPanelVisualLorix.translatesAutoresizingMaskIntoConstraints = false
        addSubview(LEALPanelVisualLorix)
        
        LEALLockVisualLorix.contentMode = .scaleAspectFit
        LEALLockVisualLorix.translatesAutoresizingMaskIntoConstraints = false
        addSubview(LEALLockVisualLorix)
        
        LEALTitleLabelLorix.text = "Enter room password"
        LEALTitleLabelLorix.textColor = .white
        LEALTitleLabelLorix.font = .systemFont(ofSize: 32, weight: .bold)
        LEALTitleLabelLorix.textAlignment = .center
        LEALTitleLabelLorix.adjustsFontSizeToFitWidth = true
        LEALTitleLabelLorix.minimumScaleFactor = 0.78
        LEALTitleLabelLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALPanelVisualLorix.addSubview(LEALTitleLabelLorix)
        
        LEALInputShellLorix.backgroundColor = .clear
        LEALInputShellLorix.layer.cornerRadius = 32
        LEALInputShellLorix.layer.borderWidth = 1.4
        LEALInputShellLorix.layer.borderColor = UIColor.white.withAlphaComponent(0.25).cgColor
        LEALInputShellLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALPanelVisualLorix.addSubview(LEALInputShellLorix)
        
        LEALPasswordFieldLorix.textColor = .white
        LEALPasswordFieldLorix.tintColor = .white
        LEALPasswordFieldLorix.textAlignment = .center
        LEALPasswordFieldLorix.font = .systemFont(ofSize: 20, weight: .bold)
        LEALPasswordFieldLorix.keyboardType = .numberPad
        LEALPasswordFieldLorix.isSecureTextEntry = true
        LEALPasswordFieldLorix.delegate = self
        LEALPasswordFieldLorix.attributedPlaceholder = NSAttributedString(string: "Enter room password", attributes: [
            .foregroundColor: UIColor.white.withAlphaComponent(0.48)
        ])
        LEALPasswordFieldLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALInputShellLorix.addSubview(LEALPasswordFieldLorix)
        
        LEALEnterButtonLorix.setBackgroundImage(UIImage(named: "LEALRoomPassEnterLorix"), for: .normal)
        LEALEnterButtonLorix.setTitle("Enter", for: .normal)
        LEALEnterButtonLorix.setTitleColor(UIColor.white.withAlphaComponent(0.52), for: .normal)
        LEALEnterButtonLorix.titleLabel?.font = .systemFont(ofSize: 24, weight: .bold)
        LEALEnterButtonLorix.addTarget(self, action: #selector(LEALTryUnlockRoomLorix), for: .touchUpInside)
        LEALEnterButtonLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALPanelVisualLorix.addSubview(LEALEnterButtonLorix)
        
        LEALCloseButtonLorix.setImage(UIImage(named: "LEALRoomPassCloseLorix"), for: .normal)
        LEALCloseButtonLorix.addTarget(self, action: #selector(LEALCloseGateLorix), for: .touchUpInside)
        LEALCloseButtonLorix.translatesAutoresizingMaskIntoConstraints = false
        addSubview(LEALCloseButtonLorix)
        
        NSLayoutConstraint.activate([
            LEALDimBeatLorix.topAnchor.constraint(equalTo: topAnchor),
            LEALDimBeatLorix.leadingAnchor.constraint(equalTo: leadingAnchor),
            LEALDimBeatLorix.trailingAnchor.constraint(equalTo: trailingAnchor),
            LEALDimBeatLorix.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            LEALPanelVisualLorix.centerXAnchor.constraint(equalTo: centerXAnchor),
            LEALPanelVisualLorix.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -6),
            LEALPanelVisualLorix.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.88),
            LEALPanelVisualLorix.heightAnchor.constraint(equalTo: LEALPanelVisualLorix.widthAnchor, multiplier: 0.82),
            
            LEALLockVisualLorix.centerXAnchor.constraint(equalTo: LEALPanelVisualLorix.centerXAnchor),
            LEALLockVisualLorix.centerYAnchor.constraint(equalTo: LEALPanelVisualLorix.topAnchor, constant: 6),
            LEALLockVisualLorix.widthAnchor.constraint(equalTo: LEALPanelVisualLorix.widthAnchor, multiplier: 0.34),
            LEALLockVisualLorix.heightAnchor.constraint(equalTo: LEALLockVisualLorix.widthAnchor),
            
            LEALTitleLabelLorix.topAnchor.constraint(equalTo: LEALPanelVisualLorix.topAnchor, constant: 70),
            LEALTitleLabelLorix.leadingAnchor.constraint(equalTo: LEALPanelVisualLorix.leadingAnchor, constant: 38),
            LEALTitleLabelLorix.trailingAnchor.constraint(equalTo: LEALPanelVisualLorix.trailingAnchor, constant: -38),
            
            LEALInputShellLorix.topAnchor.constraint(equalTo: LEALTitleLabelLorix.bottomAnchor, constant: 44),
            LEALInputShellLorix.leadingAnchor.constraint(equalTo: LEALPanelVisualLorix.leadingAnchor, constant: 60),
            LEALInputShellLorix.trailingAnchor.constraint(equalTo: LEALPanelVisualLorix.trailingAnchor, constant: -60),
            LEALInputShellLorix.heightAnchor.constraint(equalToConstant: 64),
            
            LEALPasswordFieldLorix.topAnchor.constraint(equalTo: LEALInputShellLorix.topAnchor),
            LEALPasswordFieldLorix.leadingAnchor.constraint(equalTo: LEALInputShellLorix.leadingAnchor, constant: 18),
            LEALPasswordFieldLorix.trailingAnchor.constraint(equalTo: LEALInputShellLorix.trailingAnchor, constant: -18),
            LEALPasswordFieldLorix.bottomAnchor.constraint(equalTo: LEALInputShellLorix.bottomAnchor),
            
            LEALEnterButtonLorix.topAnchor.constraint(equalTo: LEALInputShellLorix.bottomAnchor, constant: 25),
            LEALEnterButtonLorix.leadingAnchor.constraint(equalTo: LEALInputShellLorix.leadingAnchor),
            LEALEnterButtonLorix.trailingAnchor.constraint(equalTo: LEALInputShellLorix.trailingAnchor),
            LEALEnterButtonLorix.heightAnchor.constraint(equalToConstant: 43),
            
            LEALCloseButtonLorix.centerXAnchor.constraint(equalTo: centerXAnchor),
            LEALCloseButtonLorix.topAnchor.constraint(equalTo: LEALPanelVisualLorix.bottomAnchor, constant: 28),
            LEALCloseButtonLorix.widthAnchor.constraint(equalToConstant: 64),
            LEALCloseButtonLorix.heightAnchor.constraint(equalToConstant: 64)
        ])
    }
    
    func LEALFadeInBeatLorix() {
        layoutIfNeeded()
        LEALPanelVisualLorix.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        LEALLockVisualLorix.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut]) {
            self.alpha = 1
            self.LEALPanelVisualLorix.transform = .identity
            self.LEALLockVisualLorix.transform = .identity
        } completion: { _ in
            self.LEALPasswordFieldLorix.becomeFirstResponder()
        }
    }
    
    func LEALFadeOutBeatLorix() {
        LEALPasswordFieldLorix.resignFirstResponder()
        UIView.animate(withDuration: 0.18, animations: {
            self.alpha = 0
        }) { _ in
            self.removeFromSuperview()
        }
    }
    
    func LEALShakeInputBeatLorix() {
        LEALPasswordFieldLorix.text = nil
        let LEALPulseShakeLorix = CAKeyframeAnimation(keyPath: "transform.translation.x")
        LEALPulseShakeLorix.values = [-12, 12, -8, 8, -4, 4, 0]
        LEALPulseShakeLorix.duration = 0.32
        LEALInputShellLorix.layer.add(LEALPulseShakeLorix, forKey: "LEALPulseShakeLorix")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let LEALAllowedLorix = CharacterSet.decimalDigits
        return string.rangeOfCharacter(from: LEALAllowedLorix.inverted) == nil
    }
    
    @objc private func LEALTryUnlockRoomLorix() {
        let LEALPasswordLorix = LEALPasswordFieldLorix.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        LEALUnlockPulseLorix?(LEALPasswordLorix)
    }
    
    @objc private func LEALCloseGateLorix() {
        LEALCancelPulseLorix?()
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
