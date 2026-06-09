import StoreKit

final class LorixFleverPurchaseManager: NSObject {
    static let shared = LorixFleverPurchaseManager()
    
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
    
    func LorixFleverStart(productID: String, completion: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: LorixFleverText.cannotPay])))
            }
            return
        }
        LorixFleverCompletion = completion
        LorixFleverProductRequest?.cancel()
        let request = SKProductsRequest(productIdentifiers: [productID])
        request.delegate = self
        LorixFleverProductRequest = request
        request.start()
    }
    
    func LorixFleverReceipt() -> Data? {
        guard let url = Bundle.main.appStoreReceiptURL else { return nil }
        return try? Data(contentsOf: url)
    }
}

extension LorixFleverPurchaseManager: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let product = response.products.first else {
            DispatchQueue.main.async {
                self.LorixFleverCompletion?(.failure(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: LorixFleverText.missingProduct])))
                self.LorixFleverCompletion = nil
            }
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: product))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.LorixFleverCompletion?(.failure(error))
            self.LorixFleverCompletion = nil
        }
    }
}

extension LorixFleverPurchaseManager: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            switch transaction.transactionState {
            case .purchased:
                LorixFleverTransactionID = transaction.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(transaction)
                DispatchQueue.main.async {
                    self.LorixFleverCompletion?(.success(()))
                    self.LorixFleverCompletion = nil
                }
            case .failed:
                SKPaymentQueue.default().finishTransaction(transaction)
                let error = (transaction.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "", code: -999, userInfo: [NSLocalizedDescriptionKey: LorixFleverText.paymentCancelled])
                : (transaction.error ?? NSError(domain: "", code: -3, userInfo: [NSLocalizedDescriptionKey: LorixFleverText.transactionFailed]))
                DispatchQueue.main.async {
                    self.LorixFleverCompletion?(.failure(error))
                    self.LorixFleverCompletion = nil
                }
            case .restored:
                SKPaymentQueue.default().finishTransaction(transaction)
            case .purchasing, .deferred:
                break
            @unknown default:
                break
            }
        }
    }
}
