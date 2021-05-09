// SignedNumericExtensions.swift - Copyright 2021 SwifterSwift

public extension SignedNumeric {
    /// SwifterSwift: String.
    var string: String {
        return String(describing: self)
    }
}

#if canImport(Foundation)
import Foundation
public extension SignedNumeric {
    /// SwifterSwift: String with number and current locale currency.
    var asLocaleCurrency: String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        // swiftlint:disable:next force_cast
        return formatter.string(from: self as! NSNumber)
    }
}
#endif

#if canImport(Foundation)
import Foundation
public extension SignedNumeric {
    /// SwifterSwift: Spelled out representation of a number.
    ///
    ///        print((12.32).spelledOutString()) // prints "twelve point three two"
    ///
    /// - Parameter locale: Locale, default is .current.
    /// - Returns: String representation of number spelled in specified locale language. E.g. input 92, output in "en": "ninety-two".
    func spelledOutString(locale: Locale = .current) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = locale
        formatter.numberStyle = .spellOut

        guard let number = self as? NSNumber else { return nil }
        return formatter.string(from: number)
    }
}
#endif
