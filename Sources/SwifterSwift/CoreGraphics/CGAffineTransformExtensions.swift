// CGAffineTransformExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(QuartzCore) && canImport(CoreGraphics)
import CoreGraphics
import QuartzCore
public extension CGAffineTransform {
    /// SwifterSwift: Returns a transform with the same effect as the receiver.
    @inlinable
    func transform3D() -> CATransform3D { CATransform3DMakeAffineTransform(self) }
}
#endif
