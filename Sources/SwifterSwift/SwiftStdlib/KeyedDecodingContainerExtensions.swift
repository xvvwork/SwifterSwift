// KeyedDecodingContainerExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(Foundation)
import Foundation
public extension KeyedDecodingContainer {
    /// SwifterSwift: Try to decode a Bool as Int then String before decoding as Bool.
    ///
    /// - Parameter key: Key.
    /// - Returns: Decoded Bool value.
    /// - Throws: Decoding error.
    func decodeBoolAsIntOrString(forKey key: Key) throws -> Bool {
        if let intValue = try? decode(Int.self, forKey: key) {
            return (intValue as NSNumber).boolValue
        } else if let stringValue = try? decode(String.self, forKey: key) {
            return (stringValue as NSString).boolValue
        } else {
            return try decode(Bool.self, forKey: key)
        }
    }
}
#endif

#if canImport(Foundation)
import Foundation
public extension KeyedDecodingContainer {
    /// SwifterSwift: Try to decode a Bool as Int then String before decoding as Bool if present.
    ///
    /// - Parameter key: Key.
    /// - Returns: Decoded Bool value.
    /// - Throws: Decoding error.
    func decodeBoolAsIntOrStringIfPresent(forKey key: Key) throws -> Bool? {
        if let intValue = try? decodeIfPresent(Int.self, forKey: key) {
            return (intValue as NSNumber).boolValue
        } else if let stringValue = try? decodeIfPresent(String.self, forKey: key) {
            return (stringValue as NSString).boolValue
        } else {
            return try decodeIfPresent(Bool.self, forKey: key)
        }
    }
}
#endif
