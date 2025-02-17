import Foundation
#if !os(Linux) && !os(Android)
import CoreLocation
#endif


public struct GeometryCollection {
    public var geometries: [Geometry]
    
    public init(geometries: [Geometry]) {
        self.geometries = geometries
    }
    
    public init(_ multiPolygon: MultiPolygon) {
        self.geometries = multiPolygon.coordinates.map {
            $0.count > 1 ?
                .multiLineString(.init($0)) :
                .lineString(.init($0[0]))
        }
    }
}
