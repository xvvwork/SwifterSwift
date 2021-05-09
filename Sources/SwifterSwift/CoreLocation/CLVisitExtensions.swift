// CLVisitExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(CoreLocation) && (os(iOS) || targetEnvironment(macCatalyst))
import CoreLocation
public extension CLVisit {
    /// SwifterSwift: Retrieves a visit's location.
    var location: CLLocation {
        return CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}
#endif
