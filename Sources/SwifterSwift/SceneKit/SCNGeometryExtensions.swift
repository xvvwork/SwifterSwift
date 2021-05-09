// SCNGeometryExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(SceneKit)
import SceneKit
public extension SCNGeometry {
    /// SwifterSwift: Returns the size of the geometry's bounding box.
    var boundingSize: SCNVector3 {
        return (boundingBox.max - boundingBox.min).absolute
    }
}
#endif
