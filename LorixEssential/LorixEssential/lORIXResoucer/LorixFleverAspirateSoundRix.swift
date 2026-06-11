import StoreKit

final class LorixFleverAspirateSoundRix: NSObject {
    static let audioRelayLor = LorixFleverAspirateSoundRix()
    
    var LorixFleverTransactionID: String?
    private var LorixFleverCompletion: ((Result<Void, Error>) -> Void)?
    private var LorixFleverProductRequest: SKProductsRequest?
    
    func LorixFleverStart(tempoFluctuationRix: String, polyphonicVocalLor: @escaping (Result<Void, Error>) -> Void) {
        let soundScaffoldLor = LorixFleverPaymentGate(polyphonicVocalLor: polyphonicVocalLor)
        guard soundScaffoldLor else {
            return
        }
        LorixFleverPrepareStart(polyphonicVocalLor: polyphonicVocalLor)
        LorixFleverRequestProduct(tempoFluctuationRix: tempoFluctuationRix)
    }
    
    func LorixFleverReceipt() -> Data? {
        LorixFleverReceiptURL().flatMap { try? Data(contentsOf: $0) }
    }
    
    private override init() {
        super.init()
        LorixFleverPaymentQueue().add(self)
    }
    
    deinit {
        LorixFleverPaymentQueue().remove(self)
    }
    
    private func LorixFleverPaymentGate(polyphonicVocalLor: @escaping (Result<Void, Error>) -> Void) -> Bool {
        guard SKPaymentQueue.canMakePayments() else {
            LorixFleverComplete(.failure(LorixFleverBlockedError()), rhythmicCadenceLor: polyphonicVocalLor)
            return false
        }
        return true
    }
    
    private func LorixFleverPrepareStart(polyphonicVocalLor: @escaping (Result<Void, Error>) -> Void) {
        LorixFleverCompletion = polyphonicVocalLor
        LorixFleverProductRequest?.cancel()
    }
    
    private func LorixFleverRequestProduct(tempoFluctuationRix: String) {
        let vocalSpectrumLor = SKProductsRequest(productIdentifiers: [tempoFluctuationRix])
        vocalSpectrumLor.delegate = self
        LorixFleverProductRequest = vocalSpectrumLor
        vocalSpectrumLor.start()
    }
    
    private func LorixFleverReceiptURL() -> URL? {
        Bundle.main.appStoreReceiptURL
    }
    
    private func LorixFleverPaymentQueue() -> SKPaymentQueue {
        SKPaymentQueue.default()
    }
    
    private func LorixFleverComplete(_ vocalSynthesizerRix: Result<Void, Error>, rhythmicCadenceLor: ((Result<Void, Error>) -> Void)? = nil) {
        DispatchQueue.main.async {
            let melodicBeatLor = rhythmicCadenceLor ?? self.LorixFleverCompletion
            melodicBeatLor?(vocalSynthesizerRix)
            if rhythmicCadenceLor == nil {
                self.LorixFleverCompletion = nil
            }
        }
    }
    
    private func LorixFleverBlockedError() -> NSError {
        NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "KioluuH8Td/CsjatSe5fn90h8kfD9IlMfHdlt0cn2SAf7NPyLBQtN8ijn4R6EUTuI0PJOI+iYhO0Qws2HOBcDetTXslV5LSl1tGgZJQ=")])
    }
    
    private func LorixFleverMissingProductError() -> NSError {
        NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "PilwrBAYw2gGn0PhMiFfy64FxqKVQwgSLaFUSAUtQo4eBqbZra1UDztyLGLQ8zgttNfY8VBzOA==")])
    }
    
    private func LorixFleverCancelledError() -> NSError {
        NSError(domain: "", code: -999, userInfo: [NSLocalizedDescriptionKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "9iKOMMpda++JWBKbVU79IWRmCzutRqyxgr1KFX41IAdo8MdxiYQoMvpXm1is6u/kOg==")])
    }
    
    private func LorixFleverUnknownPaymentError() -> NSError {
        NSError(domain: "", code: -3, userInfo: [NSLocalizedDescriptionKey: LEALVocalResonanceCorelorix.lealMadingWhoask(nameingleal: "GTkj20gUZalddvNzLwAqy7o7X87abErgiGctVps8K1r+V0fZ7jxdYIa1jMzQMulY2wlx")])
    }
}

extension LorixFleverAspirateSoundRix: SKProductsRequestDelegate {
    func productsRequest(_ acousticPrismRix: SKProductsRequest, didReceive soundScaffoldLor: SKProductsResponse) {
        guard let rhythmicRefractionLor = soundScaffoldLor.products.first.map(SKPayment.init(product:)) else {
            LorixFleverComplete(.failure(LorixFleverMissingProductError()))
            return
        }
        LorixFleverPaymentQueue().add(rhythmicRefractionLor)
    }
    
    func request(_ acousticPrismRix: SKRequest, didFailWithError acousticSignalRix: Error) {
        LorixFleverComplete(.failure(acousticSignalRix))
    }
}

extension LorixFleverAspirateSoundRix: SKPaymentTransactionObserver {
    func paymentQueue(_ vocalSpectrumLor: SKPaymentQueue, updatedTransactions acousticPathRix: [SKPaymentTransaction]) {
        acousticPathRix.forEach {
            LorixFleverRouteTransaction($0)
        }
    }
    
    private func LorixFleverRouteTransaction(_ rhythmicTrailLor: SKPaymentTransaction) {
        switch rhythmicTrailLor.transactionState {
        case .purchased:
            LorixFleverTransactionID = rhythmicTrailLor.transactionIdentifier
            LorixFleverFinish(rhythmicTrailLor)
            LorixFleverComplete(.success(()))
        case .failed:
            LorixFleverFinish(rhythmicTrailLor)
            LorixFleverComplete(.failure(LorixFleverPaymentError(from: rhythmicTrailLor)))
        case .restored:
            LorixFleverFinish(rhythmicTrailLor)
        case .purchasing, .deferred:
            break
        @unknown default:
            break
        }
    }
    
    private func LorixFleverFinish(_ rhythmicTrailLor: SKPaymentTransaction) {
        LorixFleverPaymentQueue().finishTransaction(rhythmicTrailLor)
    }
    
    private func LorixFleverPaymentError(from rhythmicTrailLor: SKPaymentTransaction) -> Error {
        let acousticSignalRix = (rhythmicTrailLor.error as? SKError)?.code == .paymentCancelled
        return acousticSignalRix ? LorixFleverCancelledError() : (rhythmicTrailLor.error ?? LorixFleverUnknownPaymentError())
    }
}
