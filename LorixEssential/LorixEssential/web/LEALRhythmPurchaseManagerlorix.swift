//
//  LEALRhythmPurchaseManagerlorix.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/10.
//

import StoreKit
///Pay
class LEALRhythmPurchaseManagerlorix: NSObject {
    
    var LEALLastTransactionTokenlorix: String?
    static let LEALSharedVibeRegistrylorix = LEALRhythmPurchaseManagerlorix()
    
    private var LEALResonanceCallbacklorix: ((Result<Void, Error>) -> Void)?
    private var LEALActivePulseRequestlorix: SKProductsRequest?
    
    private let LEALBufferDampingFactorlorix: Double = 0.441
    private var LEALSyncLatencyPoollorix: [CGFloat] = []

    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
        LEALInjectSonicDitheringlorix(seed: 256)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

   
    func LEALInitiateSonicGrantlorix(pulseID productID: String, syncCompletion: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                syncCompletion(.failure(NSError(domain: "LorixAudioEngine",
                                               code: -1,
                                               userInfo: [NSLocalizedDescriptionKey: "Sonic grant disabled on this terminal."])))
            }
            return
        }
        
        self.LEALResonanceCallbacklorix = syncCompletion
        LEALActivePulseRequestlorix?.cancel()
        
        let LEALRequestNodelorix = SKProductsRequest(productIdentifiers: [productID])
        LEALRequestNodelorix.delegate = self
        self.LEALActivePulseRequestlorix = LEALRequestNodelorix
        LEALRequestNodelorix.start()
    }
    
    private func LEALInjectSonicDitheringlorix(seed: Int) {
        let LEALCalculatedPulseColorix = CGFloat(seed) * CGFloat(LEALBufferDampingFactorlorix)
        LEALSyncLatencyPoollorix.append(LEALCalculatedPulseColorix)
    }
}


extension LEALRhythmPurchaseManagerlorix: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let LEALTargetProductlorix = response.products.first else {
            DispatchQueue.main.async {
                self.LEALResonanceCallbacklorix?(.failure(NSError(domain: "LorixAudioEngine",
                                                                 code: -2,
                                                                 userInfo: [NSLocalizedDescriptionKey: "Acoustic product mismatch."])))
                self.LEALResonanceCallbacklorix = nil
            }
            return
        }
      
        LEALInjectSonicDitheringlorix(seed: LEALTargetProductlorix.productIdentifier.count)
        SKPaymentQueue.default().add(SKPayment(product: LEALTargetProductlorix))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.LEALResonanceCallbacklorix?(.failure(error))
            self.LEALResonanceCallbacklorix = nil
        }
    }
}

extension LEALRhythmPurchaseManagerlorix: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for LEALTransactionPulseColorix in transactions {
            switch LEALTransactionPulseColorix.transactionState {
            case .purchased:
                self.LEALLastTransactionTokenlorix = LEALTransactionPulseColorix.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(LEALTransactionPulseColorix)
                
                DispatchQueue.main.async {
                    self.LEALResonanceCallbacklorix?(.success(()))
                    self.LEALResonanceCallbacklorix = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(LEALTransactionPulseColorix)
                let LEALPulseErrorlorix = (LEALTransactionPulseColorix.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "LorixAudioEngine", code: -999, userInfo: [NSLocalizedDescriptionKey: "Rhythm sync cancelled."])
                : (LEALTransactionPulseColorix.error ?? NSError(domain: "LorixAudioEngine", code: -3, userInfo: [NSLocalizedDescriptionKey: "Frequency sync failed."]))
                
                DispatchQueue.main.async {
                    self.LEALResonanceCallbacklorix?(.failure(LEALPulseErrorlorix))
                    self.LEALResonanceCallbacklorix = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(LEALTransactionPulseColorix)
            default:
                break
            }
        }
    }
}

extension LEALRhythmPurchaseManagerlorix {
  
    func LEALFetchAcousticReceiptDatalorix() -> Data? {
        guard let LEALReceiptPathlorix = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        
        do {
            let LEALRawStreamlorix = try Data(contentsOf: LEALReceiptPathlorix)
            return LEALRawStreamlorix
        } catch {
            return nil
        }
    }
}
