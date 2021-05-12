// FloatExtensions.swift - Copyright 2021 SwifterSwift

public extension Float {
    /// SwifterSwift: Int.
    var int: Int {
        return Int(self)
    }
}

public extension Float {
    /// SwifterSwift: Double.
    var double: Double {
        return Double(self)
    }
}

#if canImport(CoreGraphics)
import CoreGraphics
public extension Float {
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
func ** (lhs: Float, rhs: Float) -> Float {
    // http://nshipster.com/swift-operators/
    return pow(lhs, rhs)
}
#endif
