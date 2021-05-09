// SKProductExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(StoreKit)
import StoreKit
@available(watchOS 6.2, *)
public extension SKProduct {
    private static let priceFormatter: NumberFormatter = {
        let priceFormatter = NumberFormatter()
        priceFormatter.numberStyle = .currency
        return priceFormatter
    }()
}
#endif

#if canImport(StoreKit)
import StoreKit
@available(watchOS 6.2, *)
public extension SKProduct {
    /// SwifterSwift: Localized price of SKProduct.
    var localizedPrice: String? {
        let formatter = SKProduct.priceFormatter
        formatter.locale = priceLocale
        return formatter.string(from: price)
    }
}
#endif
