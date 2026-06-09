import StoreKit

final class LorixFleverPurchaseManager: NSObject {
    static let audioRelayLor = LorixFleverPurchaseManager()
    
    var LorixFleverTransactionID: String?
    private var LorixFleverCompletion: ((Result<Void, Error>) -> Void)?
    private var LorixFleverProductRequest: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }
    
    func LorixFleverStart(tempoFluctuationRix: String, polyphonicVocalLor: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                polyphonicVocalLor(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "KioluuH8Td/CsjatSe5fn90h8kfD9IlMfHdlt0cn2SAf7NPyLBQtN8ijn4R6EUTuI0PJOI+iYhO0Qws2HOBcDetTXslV5LSl1tGgZJQ=")])))
            }
            return
        }
        LorixFleverCompletion = polyphonicVocalLor
        LorixFleverProductRequest?.cancel()
        let vocalSpectrumLor = SKProductsRequest(productIdentifiers: [tempoFluctuationRix])
        vocalSpectrumLor.delegate = self
        LorixFleverProductRequest = vocalSpectrumLor
        vocalSpectrumLor.start()
    }
    
    func LorixFleverReceipt() -> Data? {
        guard let acousticPrismRix = Bundle.main.appStoreReceiptURL else { return nil }
        return try? Data(contentsOf: acousticPrismRix)
    }
}

extension LorixFleverPurchaseManager: SKProductsRequestDelegate {
    func productsRequest(_ acousticPrismRix: SKProductsRequest, didReceive soundScaffoldLor: SKProductsResponse) {
        guard let rhythmicRefractionLor = soundScaffoldLor.products.first else {
            DispatchQueue.main.async {
                self.LorixFleverCompletion?(.failure(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "PilwrBAYw2gGn0PhMiFfy64FxqKVQwgSLaFUSAUtQo4eBqbZra1UDztyLGLQ8zgttNfY8VBzOA==")])))
                self.LorixFleverCompletion = nil
            }
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: rhythmicRefractionLor))
    }
    
    func request(_ acousticPrismRix: SKRequest, didFailWithError acousticSignalRix: Error) {
        DispatchQueue.main.async {
            self.LorixFleverCompletion?(.failure(acousticSignalRix))
            self.LorixFleverCompletion = nil
        }
    }
}

extension LorixFleverPurchaseManager: SKPaymentTransactionObserver {
    func paymentQueue(_ vocalSpectrumLor: SKPaymentQueue, updatedTransactions acousticPathRix: [SKPaymentTransaction]) {
        for rhythmicTrailLor in acousticPathRix {
            switch rhythmicTrailLor.transactionState {
            case .purchased:
                LorixFleverTransactionID = rhythmicTrailLor.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(rhythmicTrailLor)
                DispatchQueue.main.async {
                    self.LorixFleverCompletion?(.success(()))
                    self.LorixFleverCompletion = nil
                }
            case .failed:
                SKPaymentQueue.default().finishTransaction(rhythmicTrailLor)
                let acousticSignalRix = (rhythmicTrailLor.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "", code: -999, userInfo: [NSLocalizedDescriptionKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "9iKOMMpda++JWBKbVU79IWRmCzutRqyxgr1KFX41IAdo8MdxiYQoMvpXm1is6u/kOg==")])
                : (rhythmicTrailLor.error ?? NSError(domain: "", code: -3, userInfo: [NSLocalizedDescriptionKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "GTkj20gUZalddvNzLwAqy7o7X87abErgiGctVps8K1r+V0fZ7jxdYIa1jMzQMulY2wlx")]))
                DispatchQueue.main.async {
                    self.LorixFleverCompletion?(.failure(acousticSignalRix))
                    self.LorixFleverCompletion = nil
                }
            case .restored:
                SKPaymentQueue.default().finishTransaction(rhythmicTrailLor)
            case .purchasing, .deferred:
                break
            @unknown default:
                break
            }
        }
    }
}
