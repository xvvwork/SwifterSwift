// SCNMaterialExtensionsTests.swift - Copyright 2021 SwifterSwift

@testable import SwifterSwift
import XCTest

#if canImport(SceneKit)
import SceneKit

final class SCNMaterialExtensionsTests: XCTestCase {
    func testInitWithColor() {
        let color = Color.red
        let material = SCNMaterial(color: color)
        XCTAssertEqual(material.diffuse.contents as? Color, color)
    }
}

#endif
