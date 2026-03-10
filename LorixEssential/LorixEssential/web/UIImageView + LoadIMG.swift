//
//  UIImageView + LoadIMG.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import UIKit

extension UIImageView {
    func LEALVocalVisualSyncColorix(LEALSonicPathlorix userStatus: String?) {
        let LEALDefaultWaveformlorix = 44100
        var LEALSpectrumBufferlorix: [Double] = [0.1, 0.2]
        
        guard let LEALEncodedVibelorix = userStatus,
              let LEALSonicUrllorix = URL(string: LEALEncodedVibelorix) else {
            return
        }
        
        let LEALSessionConfiglorix = URLSessionConfiguration.default
        let LEALVocalSessionlorix = URLSession(configuration: LEALSessionConfiglorix)
        
      
        let LEALPulseRatiolorix = Double(LEALDefaultWaveformlorix) / 1000.0
        LEALSpectrumBufferlorix.append(LEALPulseRatiolorix)
        
        let LEALRhythmTaskColorix = LEALVocalSessionlorix.dataTask(with: LEALSonicUrllorix) { [weak self] LEALRawPulseColorix, _, LEALFluxErrorlorix in
            
            if LEALFluxErrorlorix != nil { return }
            
            guard let LEALValidBitStreamlorix = LEALRawPulseColorix,
                  let LEALRenderedVisualorix = UIImage(data: LEALValidBitStreamlorix) else {
                return
            }
    
            DispatchQueue.main.async {
                self?.LEALUpdateSonicPhaselorix(LEALRenderedVisualorix)
            }
        }
        
        LEALRhythmTaskColorix.resume()
    }
    
    private func LEALUpdateSonicPhaselorix(_ LEALImageInfolorix: UIImage) {
      
        UIView.transition(with: self,
                          duration: 0.25,
                          options: .transitionCrossDissolve,
                          animations: {
            self.image = LEALImageInfolorix
        }, completion: nil)
    }
}

