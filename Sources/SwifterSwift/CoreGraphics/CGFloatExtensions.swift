// CGFloatExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(CoreGraphics)
import CoreGraphics
public extension CGFloat {
    /// SwifterSwift: Absolute of CGFloat value.
    var abs: CGFloat {
        return Swift.abs(self)
    }
}
#endif

#if canImport(CoreGraphics) && canImport(Foundation)
import CoreGraphics
import Foundation
public extension CGFloat {
    /// SwifterSwift: Ceil of CGFloat value.
    var ceil: CGFloat {
        return Foundation.ceil(self)
    }
}
#endif

#if canImport(CoreGraphics)
import CoreGraphics
public extension CGFloat {
    /// SwifterSwift: Radian value of degree input.
    var degreesToRadians: CGFloat {
        return .pi * self / 180.0
    }
}
#endif

#if canImport(CoreGraphics) && canImport(Foundation)
import CoreGraphics
import Foundation
public extension CGFloat {
    /// SwifterSwift: Floor of CGFloat value.
    var floor: CGFloat {
        return Foundation.floor(self)
    }
}
#endif

#if canImport(CoreGraphics)
import CoreGraphics
public extension CGFloat {
    /// SwifterSwift: Check if CGFloat is positive.
    var isPositive: Bool {
        return self > 0
    }
}
#endif

#if canImport(CoreGraphics)
import CoreGraphics
public extension CGFloat {
    /// SwifterSwift: Check if CGFloat is negative.
    var isNegative: Bool {
        return self < 0
    }
}
#endif

#if canImport(CoreGraphics)
import CoreGraphics
public extension CGFloat {
    /// SwifterSwift: Int.
    var int: Int {
        return Int(self)
    }
}
#endif

#if canImport(CoreGraphics)
import CoreGraphics
public extension CGFloat {
    /// SwifterSwift: Float.
    var float: Float {
        return Float(self)
    }
}
#endif

#if canImport(CoreGraphics)
import CoreGraphics
public extension CGFloat {
    /// SwifterSwift: Double.
    var double: Double {
        return Double(self)
    }
}
#endif

#if canImport(CoreGraphics)
import CoreGraphics
public extension CGFloat {
    /// SwifterSwift: Degree value of radian input.
    var radiansToDegrees: CGFloat {
        return self * 180 / CGFloat.pi
    }
}
#endif
