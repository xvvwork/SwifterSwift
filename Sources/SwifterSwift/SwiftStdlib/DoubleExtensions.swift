// DoubleExtensions.swift - Copyright 2021 SwifterSwift

public extension Double {
    /// SwifterSwift: Int.
    var int: Int {
        return Int(self)
    }
}

public extension Double {
    /// SwifterSwift: Float.
    var float: Float {
        return Float(self)
    }
}

#if canImport(CoreGraphics)
import CoreGraphics
public extension Double {
    /// SwifterSwift: CGFloat.
    var cgFloat: CGFloat {
        return CGFloat(self)
    }
}
#endif

#if canImport(Foundation)
import Foundation
precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator **: PowerPrecedence
/// SwifterSwift: Value of exponentiation.
///
/// - Parameters:
///   - lhs: base double.
///   - rhs: exponent double.
/// - Returns: exponentiation result (example: 4.4 ** 0.5 = 2.0976176963).
func ** (lhs: Double, rhs: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return pow(lhs, rhs)
}
#endif
