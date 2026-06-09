//
//  LEAFelayAddInfoController.swift
//  LorixEssential
//
//  Created by  on 2026/5/21.
//

import UIKit
import PhotosUI

struct LEALRhythmProfileSnapshotlorix {
    let LEALBeatNameLorix: String
    let LEALBeatBioLorix: String
    let LEALBeatAvatarPathLorix: String?
}

enum LEALRhythmProfileMemorylorix {
    private static let LEALNameKeyLorix = "LEALBeatboxCreatorNameLorix"
    private static let LEALBioKeyLorix = "LEALBeatboxCreatorBioLorix"
    private static let LEALAvatarKeyLorix = "LEALBeatboxCreatorAvatarLorix"
    
    static var LEALCurrentSnapshotLorix: LEALRhythmProfileSnapshotlorix? {
        let LEALStoreLorix = UserDefaults.standard
        guard let LEALNameLorix = LEALStoreLorix.string(forKey: LEALNameKeyLorix),
              LEALNameLorix.isEmpty == false else {
            return nil
        }
        return LEALRhythmProfileSnapshotlorix(
            LEALBeatNameLorix: LEALNameLorix,
            LEALBeatBioLorix: LEALStoreLorix.string(forKey: LEALBioKeyLorix) ?? "",
            LEALBeatAvatarPathLorix: LEALStoreLorix.string(forKey: LEALAvatarKeyLorix)
        )
    }
    
    static func LEALStoreProfileLorix(name: String, bio: String, avatarPath: String?) {
        let LEALStoreLorix = UserDefaults.standard
        LEALStoreLorix.set(name, forKey: LEALNameKeyLorix)
        LEALStoreLorix.set(bio, forKey: LEALBioKeyLorix)
        if let avatarPath {
            LEALStoreLorix.set(avatarPath, forKey: LEALAvatarKeyLorix)
        }
        LEALStoreLorix.synchronize()
    }
}

class LEAFelayAddInfoController: UIViewController {
    private let LEALGradientStageLorix = CAGradientLayer()
    private let LEALBackPulseLorix = UIButton(type: .system)
    private let LEALTitleBeatLorix = UILabel()
    private let LEALAvatarDeckLorix = UIImageView()
    private let LEALUploadGrooveLorix = UIButton(type: .system)
    private let LEALNicknameTagLorix = UILabel()
//    private let LEALNicknameShellLorix = UIView()
    private let LEALNicknameFieldLorix = UITextField()
    private let LEALBioTagLorix = UILabel()
//    private let LEALBioShellLorix = UIView()
    private let LEALBioFieldLorix = UITextView()
    private let LEALOkGrooveLorix = UIButton(type: .system)
    private let LEALKeyboardScrollLorix = UIScrollView()
    private let LEALFormStackLorix = UIView()
    private var LEALSelectedAvatarLorix: UIImage?
    private var LEALSavedAvatarPathLorix: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        LEALBuildProfileStudioLorix()
        LEALLoadDraftProfileLorix()
        LEALBindKeyboardPulseLorix()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        LEALGradientStageLorix.frame = view.bounds
        LEALAvatarDeckLorix.layer.cornerRadius = LEALAvatarDeckLorix.bounds.width / 2
        LEALUploadGrooveLorix.layer.cornerRadius = LEALUploadGrooveLorix.bounds.height / 2
        LEALOkGrooveLorix.layer.cornerRadius = LEALOkGrooveLorix.bounds.height / 2

        LEALApplyBeatGradientLorix(to: LEALUploadGrooveLorix, colors: [
            UIColor(red: 0.69, green: 0.21, blue: 1.0, alpha: 1),
            UIColor(red: 0.38, green: 0.0, blue: 1.0, alpha: 1)
        ])
        LEALApplyBeatGradientLorix(to: LEALOkGrooveLorix, colors: [
            UIColor(red: 0.69, green: 0.21, blue: 1.0, alpha: 1),
            UIColor(red: 0.38, green: 0.0, blue: 1.0, alpha: 1)
        ])
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    private func LEALBuildProfileStudioLorix() {
        navigationController?.setNavigationBarHidden(true, animated: false)
        view.backgroundColor = .black
        LEALGradientStageLorix.colors = [
            UIColor(red: 0.0, green: 0.01, blue: 0.05, alpha: 1).cgColor,
            UIColor(red: 0.02, green: 0.02, blue: 0.16, alpha: 1).cgColor,
            UIColor(red: 0.32, green: 0.51, blue: 1.0, alpha: 1).cgColor,
            UIColor(red: 0.0, green: 0.0, blue: 0.05, alpha: 1).cgColor
        ]
        LEALGradientStageLorix.locations = [0, 0.28, 0.42, 1]
        LEALGradientStageLorix.startPoint = CGPoint(x: 0, y: 1)
        LEALGradientStageLorix.endPoint = CGPoint(x: 1, y: 0)
        view.layer.insertSublayer(LEALGradientStageLorix, at: 0)
        
        LEALKeyboardScrollLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALKeyboardScrollLorix.alwaysBounceVertical = true
        LEALKeyboardScrollLorix.keyboardDismissMode = .interactive
        LEALKeyboardScrollLorix.showsVerticalScrollIndicator = false
        view.addSubview(LEALKeyboardScrollLorix)
        
        LEALFormStackLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALKeyboardScrollLorix.addSubview(LEALFormStackLorix)
        
        LEALBackPulseLorix.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        LEALBackPulseLorix.tintColor = .white
        LEALBackPulseLorix.addTarget(self, action: #selector(LEALReturnToPortalLorix), for: .touchUpInside)
        LEALBackPulseLorix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALBackPulseLorix)
        
        LEALTitleBeatLorix.text = "Compete Profile"
        LEALTitleBeatLorix.textColor = .white
        LEALTitleBeatLorix.font = .systemFont(ofSize: 30, weight: .medium)
        LEALTitleBeatLorix.textAlignment = .center
        LEALTitleBeatLorix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LEALTitleBeatLorix)
        
        LEALAvatarDeckLorix.image = LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "yuelaocio") ?? UIImage(systemName: "person.crop.circle.fill")
        LEALAvatarDeckLorix.tintColor = UIColor(white: 1, alpha: 0.7)
        LEALAvatarDeckLorix.contentMode = .scaleAspectFill
        LEALAvatarDeckLorix.clipsToBounds = true
        LEALAvatarDeckLorix.isUserInteractionEnabled = true
        LEALAvatarDeckLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALFormStackLorix.addSubview(LEALAvatarDeckLorix)
        LEALAvatarDeckLorix.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(LEALOpenAvatarSamplerLorix)))
        
        LEALUploadGrooveLorix.setTitle("Upload", for: .normal)
        LEALUploadGrooveLorix.setTitleColor(.white, for: .normal)
        LEALUploadGrooveLorix.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        LEALUploadGrooveLorix.clipsToBounds = true
        LEALUploadGrooveLorix.addTarget(self, action: #selector(LEALOpenAvatarSamplerLorix), for: .touchUpInside)
        LEALUploadGrooveLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALFormStackLorix.addSubview(LEALUploadGrooveLorix)
        
        LEALNicknameTagLorix.text = "Nickname"
        LEALNicknameTagLorix.textColor = .white
        LEALNicknameTagLorix.font = .systemFont(ofSize: 16, weight: .regular)
        LEALNicknameTagLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALFormStackLorix.addSubview(LEALNicknameTagLorix)
        
//        LEALNicknameShellLorix.backgroundColor = UIColor(red: 0.21, green: 0.22, blue: 0.29, alpha: 0.92)
//        LEALNicknameShellLorix.clipsToBounds = true
//        LEALNicknameShellLorix.translatesAutoresizingMaskIntoConstraints = false
//        LEALFormStackLorix.addSubview(LEALNicknameShellLorix)
        
        LEALNicknameFieldLorix.borderStyle = .roundedRect
        LEALNicknameFieldLorix.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1800)
        
        LEALNicknameFieldLorix.textColor = .white
        LEALNicknameFieldLorix.tintColor = .white
        LEALNicknameFieldLorix.font = .systemFont(ofSize:16, weight: .regular)
        LEALNicknameFieldLorix.clearButtonMode = .whileEditing
        LEALNicknameFieldLorix.returnKeyType = .next
        LEALNicknameFieldLorix.textContentType = .nickname
        LEALNicknameFieldLorix.autocorrectionType = .no
        LEALNicknameFieldLorix.inputAccessoryView = LEALMakeKeyboardDoneBarLorix()
        LEALNicknameFieldLorix.delegate = self
        LEALNicknameFieldLorix.attributedPlaceholder = NSAttributedString(string: "Beatbox name", attributes: [.foregroundColor: UIColor.white.withAlphaComponent(0.42)])
        LEALNicknameFieldLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALFormStackLorix.addSubview(LEALNicknameFieldLorix)
        
        LEALBioTagLorix.text = "Bio"
        LEALBioTagLorix.textColor = .white
        LEALBioTagLorix.font = .systemFont(ofSize: 16, weight: .regular)
        LEALBioTagLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALFormStackLorix.addSubview(LEALBioTagLorix)

        LEALBioFieldLorix.layer.cornerRadius = 20
        LEALBioFieldLorix.layer.masksToBounds = true
        LEALBioFieldLorix.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1800)
        
        LEALBioFieldLorix.textColor = .white
        LEALBioFieldLorix.tintColor = .white
        
        LEALBioFieldLorix.font = .systemFont(ofSize:16, weight: .regular)
        LEALBioFieldLorix.textContainerInset = UIEdgeInsets(top: 30, left: 34, bottom: 18, right: 28)
        LEALBioFieldLorix.textContainer.lineFragmentPadding = 0
        LEALBioFieldLorix.returnKeyType = .done
        LEALBioFieldLorix.keyboardDismissMode = .interactive
        LEALBioFieldLorix.inputAccessoryView = LEALMakeKeyboardDoneBarLorix()
        LEALBioFieldLorix.delegate = self
        LEALBioFieldLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALFormStackLorix.addSubview(LEALBioFieldLorix)
        
        LEALOkGrooveLorix.setTitle("OK", for: .normal)
        LEALOkGrooveLorix.setTitleColor(.white, for: .normal)
        LEALOkGrooveLorix.titleLabel?.font = .systemFont(ofSize:16, weight: .bold)
        LEALOkGrooveLorix.clipsToBounds = true
        LEALOkGrooveLorix.addTarget(self, action: #selector(LEALCommitCreatorPulseLorix), for: .touchUpInside)
        LEALOkGrooveLorix.translatesAutoresizingMaskIntoConstraints = false
        LEALFormStackLorix.addSubview(LEALOkGrooveLorix)
        
        NSLayoutConstraint.activate([
            LEALKeyboardScrollLorix.topAnchor.constraint(equalTo: view.topAnchor),
            LEALKeyboardScrollLorix.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            LEALKeyboardScrollLorix.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            LEALKeyboardScrollLorix.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            LEALFormStackLorix.topAnchor.constraint(equalTo: LEALKeyboardScrollLorix.contentLayoutGuide.topAnchor),
            LEALFormStackLorix.leadingAnchor.constraint(equalTo: LEALKeyboardScrollLorix.frameLayoutGuide.leadingAnchor),
            LEALFormStackLorix.trailingAnchor.constraint(equalTo: LEALKeyboardScrollLorix.frameLayoutGuide.trailingAnchor),
            LEALFormStackLorix.bottomAnchor.constraint(equalTo: LEALKeyboardScrollLorix.contentLayoutGuide.bottomAnchor),
            LEALFormStackLorix.heightAnchor.constraint(greaterThanOrEqualTo: LEALKeyboardScrollLorix.frameLayoutGuide.heightAnchor),
            
            LEALBackPulseLorix.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 42),
            LEALBackPulseLorix.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 47),
            LEALBackPulseLorix.widthAnchor.constraint(equalToConstant: 34),
            LEALBackPulseLorix.heightAnchor.constraint(equalToConstant: 34),
            
            LEALTitleBeatLorix.centerYAnchor.constraint(equalTo: LEALBackPulseLorix.centerYAnchor),
            LEALTitleBeatLorix.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            LEALAvatarDeckLorix.topAnchor.constraint(equalTo: LEALFormStackLorix.safeAreaLayoutGuide.topAnchor, constant: 143),
            LEALAvatarDeckLorix.centerXAnchor.constraint(equalTo: LEALFormStackLorix.centerXAnchor),
            LEALAvatarDeckLorix.widthAnchor.constraint(equalToConstant: 110),
            LEALAvatarDeckLorix.heightAnchor.constraint(equalToConstant: 110),
            
            LEALUploadGrooveLorix.centerXAnchor.constraint(equalTo: LEALAvatarDeckLorix.centerXAnchor),
            LEALUploadGrooveLorix.centerYAnchor.constraint(equalTo: LEALAvatarDeckLorix.bottomAnchor, constant: 0),
            LEALUploadGrooveLorix.widthAnchor.constraint(equalToConstant: 80),
            LEALUploadGrooveLorix.heightAnchor.constraint(equalToConstant: 32),
            
            LEALNicknameTagLorix.topAnchor.constraint(equalTo: LEALUploadGrooveLorix.bottomAnchor, constant: 44),
            LEALNicknameTagLorix.leadingAnchor.constraint(equalTo: LEALFormStackLorix.leadingAnchor, constant: 22),
            LEALNicknameTagLorix.heightAnchor.constraint(equalToConstant: 30),
            

            LEALNicknameFieldLorix.leadingAnchor.constraint(equalTo: LEALFormStackLorix.leadingAnchor, constant: 22),
            LEALNicknameFieldLorix.trailingAnchor.constraint(equalTo: LEALFormStackLorix.trailingAnchor, constant: -22),
            LEALNicknameFieldLorix.topAnchor.constraint(equalTo: LEALNicknameTagLorix.bottomAnchor, constant: 9),
            LEALNicknameFieldLorix.heightAnchor.constraint(equalToConstant: 62),
            
            LEALBioTagLorix.topAnchor.constraint(equalTo: LEALNicknameFieldLorix.bottomAnchor, constant: 30),
            LEALBioTagLorix.leadingAnchor.constraint(equalTo: LEALNicknameTagLorix.leadingAnchor),
            
        
            
            LEALBioFieldLorix.topAnchor.constraint(equalTo: LEALBioTagLorix.bottomAnchor,constant: 8),
            LEALBioFieldLorix.leadingAnchor.constraint(equalTo: LEALNicknameFieldLorix.leadingAnchor),
            LEALBioFieldLorix.trailingAnchor.constraint(equalTo: LEALNicknameFieldLorix.trailingAnchor),
            LEALBioFieldLorix.heightAnchor.constraint(equalToConstant: 126),
            
            LEALOkGrooveLorix.topAnchor.constraint(equalTo: LEALBioFieldLorix.bottomAnchor, constant: 31),
            LEALOkGrooveLorix.leadingAnchor.constraint(equalTo: LEALBioFieldLorix.leadingAnchor),
            LEALOkGrooveLorix.trailingAnchor.constraint(equalTo: LEALBioFieldLorix.trailingAnchor),
            LEALOkGrooveLorix.heightAnchor.constraint(equalToConstant: 60),
            LEALOkGrooveLorix.bottomAnchor.constraint(equalTo: LEALFormStackLorix.bottomAnchor, constant: -30)
        ])
    }
    
    private func LEALLoadDraftProfileLorix() {
        if let LEALProfileLorix = LEALRhythmProfileMemorylorix.LEALCurrentSnapshotLorix {
            LEALNicknameFieldLorix.text = LEALProfileLorix.LEALBeatNameLorix
            LEALBioFieldLorix.text = LEALProfileLorix.LEALBeatBioLorix
            if let LEALPathLorix = LEALProfileLorix.LEALBeatAvatarPathLorix,
               let LEALImageLorix = UIImage(contentsOfFile: LEALPathLorix) {
                LEALAvatarDeckLorix.image = LEALImageLorix
                LEALSavedAvatarPathLorix = LEALPathLorix
            }
        } else {
//            LEALNicknameFieldLorix.text = "Lucy"
//            LEALBioFieldLorix.text = "Music, late-night talks, and genuine connections 🎧🌙"
        }
    }
    
    private func LEALBindKeyboardPulseLorix() {
        NotificationCenter.default.addObserver(self, selector: #selector(LEALKeyboardMovedLorix(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(LEALKeyboardMovedLorix(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        let LEALInputDismissTapLorix = UITapGestureRecognizer(target: self, action: #selector(LEALDismissInputWaveLorix))
        LEALInputDismissTapLorix.cancelsTouchesInView = false
        view.addGestureRecognizer(LEALInputDismissTapLorix)
    }
    
    private func LEALMakeKeyboardDoneBarLorix() -> UIToolbar {
        let LEALToolbarLorix = UIToolbar()
        LEALToolbarLorix.sizeToFit()
        let LEALFlexLorix = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let LEALDoneLorix = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(LEALDismissInputWaveLorix))
        LEALToolbarLorix.items = [LEALFlexLorix, LEALDoneLorix]
        return LEALToolbarLorix
    }
    
    private func LEALActiveProfileInputLorix() -> UIView? {
        if LEALNicknameFieldLorix.isFirstResponder { return LEALNicknameFieldLorix }
        if LEALBioFieldLorix.isFirstResponder { return LEALBioFieldLorix }
        return nil
    }
    
    private func LEALRevealActiveProfileInputLorix() {
        guard let LEALActiveInputLorix = LEALActiveProfileInputLorix() else { return }
        let LEALTargetRectLorix = LEALActiveInputLorix.convert(LEALActiveInputLorix.bounds.insetBy(dx: 0, dy: -18), to: LEALKeyboardScrollLorix)
        LEALKeyboardScrollLorix.scrollRectToVisible(LEALTargetRectLorix, animated: true)
    }
    
    private func LEALApplyBeatGradientLorix(to LEALButtonLorix: UIButton, colors: [UIColor]) {
        LEALButtonLorix.layer.sublayers?.filter { $0.name == "LEALButtonBeatGradientLorix" }.forEach { $0.removeFromSuperlayer() }
        let LEALButtonGradientLorix = CAGradientLayer()
        LEALButtonGradientLorix.name = "LEALButtonBeatGradientLorix"
        LEALButtonGradientLorix.colors = colors.map(\.cgColor)
        LEALButtonGradientLorix.startPoint = CGPoint(x: 0, y: 0.5)
        LEALButtonGradientLorix.endPoint = CGPoint(x: 1, y: 0.5)
        LEALButtonGradientLorix.frame = LEALButtonLorix.bounds
        LEALButtonLorix.layer.insertSublayer(LEALButtonGradientLorix, at: 0)
    }
    
    private func LEALPersistAvatarImageLorix(_ LEALImageLorix: UIImage) -> String? {
        guard let LEALDataLorix = LEALImageLorix.jpegData(compressionQuality: 0.86) else { return nil }
        let LEALDirectoryLorix = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let LEALFileLorix = LEALDirectoryLorix?.appendingPathComponent("LEALCreatorAvatarGrooveLorix.jpg")
        guard let LEALFileLorix else { return nil }
        do {
            try LEALDataLorix.write(to: LEALFileLorix, options: [.atomic])
            return LEALFileLorix.path
        } catch {
            return nil
        }
    }
    
    @objc private func LEALReturnToPortalLorix() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func LEALOpenAvatarSamplerLorix() {
        var LEALPickerConfigLorix = PHPickerConfiguration(photoLibrary: .shared())
        LEALPickerConfigLorix.selectionLimit = 1
        LEALPickerConfigLorix.filter = .images
        let LEALPickerLorix = PHPickerViewController(configuration: LEALPickerConfigLorix)
        LEALPickerLorix.delegate = self
        present(LEALPickerLorix, animated: true)
    }
    
    @objc private func LEALCommitCreatorPulseLorix() {
        view.endEditing(true)
        let LEALNameLorix = LEALNicknameFieldLorix.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let LEALBioLorix = LEALBioFieldLorix.text.trimmingCharacters(in: .whitespacesAndNewlines)
        guard LEALNameLorix.count >= 2 else {
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: "Add a rhythm nickname", on: self.view)
            return
        }
        guard LEALBioLorix.isEmpty == false else {
            LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: false, message: "Add your creator bio", on: self.view)
            return
        }
        let LEALAvatarPathLorix = LEALSelectedAvatarLorix.flatMap { LEALPersistAvatarImageLorix($0) } ?? LEALSavedAvatarPathLorix
        LEALRhythmProfileMemorylorix.LEALStoreProfileLorix(name: LEALNameLorix, bio: LEALBioLorix, avatarPath: LEALAvatarPathLorix)
        LEALWaveformMonitorlorix.LEALBroadcastSonicResultlorix(isPositive: true, message: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "Rzd7//LsARsYgDmwKL1l3BlqHLWmtLozfH1fE1Klf7jmok4zWhHxlKEM8Kmd33bMBL4="), on: self.view)
        LEALRootCoordinator.LEALShared.LEALSwitchTerminal(LEALIsAuthenticated: true)
    }
    
    @objc private func LEALDismissInputWaveLorix() {
        view.endEditing(true)
    }
    
    @objc private func LEALKeyboardMovedLorix(_ LEALNoteLorix: Notification) {
        guard let LEALKeyboardFrameLorix = LEALNoteLorix.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let LEALKeyboardInViewLorix = view.convert(LEALKeyboardFrameLorix, from: nil)
        let LEALOverlapLorix = max(0, view.bounds.maxY - LEALKeyboardInViewLorix.minY)
        LEALKeyboardScrollLorix.contentInset.bottom = LEALOverlapLorix + 20
        LEALKeyboardScrollLorix.verticalScrollIndicatorInsets.bottom = LEALOverlapLorix
        DispatchQueue.main.async {
            self.LEALRevealActiveProfileInputLorix()
        }
    }
}

extension LEAFelayAddInfoController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        guard let LEALProviderLorix = results.first?.itemProvider,
              LEALProviderLorix.canLoadObject(ofClass: UIImage.self) else { return }
        LEALProviderLorix.loadObject(ofClass: UIImage.self) { [weak self] LEALObjectLorix, _ in
            guard let LEALImageLorix = LEALObjectLorix as? UIImage else { return }
            DispatchQueue.main.async {
                self?.LEALSelectedAvatarLorix = LEALImageLorix
                self?.LEALAvatarDeckLorix.image = LEALImageLorix
            }
        }
    }
}

extension LEAFelayAddInfoController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == LEALNicknameFieldLorix {
            LEALBioFieldLorix.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}

extension LEAFelayAddInfoController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
}
