// UILayoutPriorityExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(UIKit) && (os(iOS) || os(tvOS))
import UIKit
extension UILayoutPriority: ExpressibleByFloatLiteral {
    // MARK: - Initializers

    /// SwifterSwift: Initialize `UILayoutPriority` with a float literal.
    ///
    ///     constraint.priority = 0.5
    ///
    /// - Parameter value: The float value of the constraint.
    public init(floatLiteral value: Float) {
        self.init(rawValue: value)
    }
}
#endif

#if canImport(UIKit) && (os(iOS) || os(tvOS))
import UIKit
extension UILayoutPriority: ExpressibleByIntegerLiteral {
    /// SwifterSwift: Initialize `UILayoutPriority` with an integer literal.
    ///
    ///     constraint.priority = 5
    ///
    /// - Parameter value: The integer value of the constraint.
    public init(integerLiteral value: Int) {
        self.init(rawValue: Float(value))
    }
}
#endif
