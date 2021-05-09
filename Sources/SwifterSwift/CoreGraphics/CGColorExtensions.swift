// CGColorExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(CoreGraphics) && canImport(UIKit)
import CoreGraphics
import UIKit
public extension CGColor {
    /// SwifterSwift: UIColor.
    var uiColor: UIColor? {
        return UIColor(cgColor: self)
    }
}
#endif

#if canImport(CoreGraphics) && canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit
import CoreGraphics
public extension CGColor {
    /// SwifterSwift: NSColor.
    var nsColor: NSColor? {
        return NSColor(cgColor: self)
    }
}
#endif
