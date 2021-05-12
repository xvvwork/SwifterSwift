// NSEdgeInsetsExtensions.swift - Copyright 2021 SwifterSwift

#if os(macOS) && canImport(Foundation)
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: An edge insets struct whose top, left, bottom, and right fields are all set to 0.
    static let zero = NSEdgeInsets()
}
#endif

#if os(macOS) && canImport(Foundation)
import Foundation
extension NSEdgeInsets: Equatable {
    /// SwifterSwift: Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: NSEdgeInsets, rhs: NSEdgeInsets) -> Bool {
        return lhs.top == rhs.top &&
            lhs.left == rhs.left &&
            lhs.bottom == rhs.bottom &&
            lhs.right == rhs.right
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Return the vertical insets. The vertical insets is composed by top + bottom.
    var vertical: CGFloat {
        return top + bottom
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Return the horizontal insets. The horizontal insets is composed by  left + right.
    var horizontal: CGFloat {
        return left + right
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Creates an `NSEdgeInsets` with the inset value applied to all (top, bottom, right, left).
    ///
    /// - Parameter inset: Inset to be applied in all the edges.
    init(inset: CGFloat) {
        self.init(top: inset, left: inset, bottom: inset, right: inset)
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Creates an `NSEdgeInsets` with the horizontal value equally divided and applied to right and left.
    ///               And the vertical value equally divided and applied to top and bottom.
    ///
    ///
    /// - Parameter horizontal: Inset to be applied to right and left.
    /// - Parameter vertical: Inset to be applied to top and bottom.
    init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical / 2, left: horizontal / 2, bottom: vertical / 2, right: horizontal / 2)
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Creates an `NSEdgeInsets` based on current value and top offset.
    ///
    /// - Parameters:
    ///   - top: Offset to be applied in to the top edge.
    /// - Returns: NSEdgeInsets offset with given offset.
    func insetBy(top: CGFloat) -> NSEdgeInsets {
        return .init(top: self.top + top, left: left, bottom: bottom, right: right)
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Creates an `NSEdgeInsets` based on current value and left offset.
    ///
    /// - Parameters:
    ///   - left: Offset to be applied in to the left edge.
    /// - Returns: NSEdgeInsets offset with given offset.
    func insetBy(left: CGFloat) -> NSEdgeInsets {
        return .init(top: top, left: self.left + left, bottom: bottom, right: right)
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Creates an `NSEdgeInsets` based on current value and bottom offset.
    ///
    /// - Parameters:
    ///   - bottom: Offset to be applied in to the bottom edge.
    /// - Returns: NSEdgeInsets offset with given offset.
    func insetBy(bottom: CGFloat) -> NSEdgeInsets {
        return .init(top: top, left: left, bottom: self.bottom + bottom, right: right)
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Creates an `NSEdgeInsets` based on current value and right offset.
    ///
    /// - Parameters:
    ///   - right: Offset to be applied in to the right edge.
    /// - Returns: NSEdgeInsets offset with given offset.
    func insetBy(right: CGFloat) -> NSEdgeInsets {
        return .init(top: top, left: left, bottom: bottom, right: self.right + right)
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Creates an `NSEdgeInsets` based on current value and horizontal value equally divided and applied to right offset and left offset.
    ///
    /// - Parameters:
    ///   - horizontal: Offset to be applied to right and left.
    /// - Returns: NSEdgeInsets offset with given offset.
    func insetBy(horizontal: CGFloat) -> NSEdgeInsets {
        return .init(top: top, left: left + horizontal / 2, bottom: bottom, right: right + horizontal / 2)
    }
}
#endif

#if os(macOS) && canImport(Foundation) && canImport(CoreGraphics)
import CoreGraphics
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Creates an `NSEdgeInsets` based on current value and vertical value equally divided and applied to top and bottom.
    ///
    /// - Parameters:
    ///   - vertical: Offset to be applied to top and bottom.
    /// - Returns: NSEdgeInsets offset with given offset.
    func insetBy(vertical: CGFloat) -> NSEdgeInsets {
        return .init(top: top + vertical / 2, left: left, bottom: bottom + vertical / 2, right: right)
    }
}
#endif

#if os(macOS) && canImport(Foundation)
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Add all the properties of two `NSEdgeInsets` to create their addition.
    ///
    /// - Parameters:
    ///   - lhs: The left-hand expression
    ///   - rhs: The right-hand expression
    /// - Returns: A new `NSEdgeInsets` instance where the values of `lhs` and `rhs` are added together.
    static func + (_ lhs: NSEdgeInsets, _ rhs: NSEdgeInsets) -> NSEdgeInsets {
        return .init(
            top: lhs.top + rhs.top,
            left: lhs.left + rhs.left,
            bottom: lhs.bottom + rhs.bottom,
            right: lhs.right + rhs.right)
    }
}
#endif

#if os(macOS) && canImport(Foundation)
import Foundation
public extension NSEdgeInsets {
    /// SwifterSwift: Add all the properties of two `NSEdgeInsets` to the left-hand instance.
    ///
    /// - Parameters:
    ///   - lhs: The left-hand expression to be mutated
    ///   - rhs: The right-hand expression
    static func += (_ lhs: inout NSEdgeInsets, _ rhs: NSEdgeInsets) {
        lhs.top += rhs.top
        lhs.left += rhs.left
        lhs.bottom += rhs.bottom
        lhs.right += rhs.right
    }
}
#endif
