import Foundation
#if !os(Linux) && !os(Android)
import CoreLocation
#endif


public struct MultiPoint: Equatable {
    public var coordinates: [LocationCoordinate2D]
    
    public init(_ coordinates: [LocationCoordinate2D]) {
        self.coordinates = coordinates
    }
}
