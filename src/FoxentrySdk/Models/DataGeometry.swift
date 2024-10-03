/**
 * Foxentry API reference
 *
 * The version of the OpenAPI document: 2.0
 * Contact: info@foxentry.com
 *
 * NOTE: This file is auto generated.
 * Do not edit the file manually.
 */
import Foundation

public class DataGeometry: Codable {
    public var gps: DataGeometryGps?
    public var custom: [DataGeometryCustom?]?
    public init(
        gps: DataGeometryGps?,
        custom: [DataGeometryCustom?]?
    ) {
        self.gps = gps
        self.custom = custom
    }
}

public class DataGeometryGps: Codable {
    public var lat: Double!
    public var lon: Double!
    public init(
        lat: Double!,
        lon: Double!
    ) {
        self.lat = lat
        self.lon = lon
    }
}

public class DataGeometryCustom: Codable {
    public var type: DataGeometryCustomType?
    public var coordinates: DataGeometryCustomCoordinates?
    public init(
        type: DataGeometryCustomType?,
        coordinates: DataGeometryCustomCoordinates?
    ) {
        self.type = type
        self.coordinates = coordinates
    }
}

/**
 * Type of coordinate system.
 */
public enum DataGeometryCustomType: String, Codable, UnknownCaseRepresentable {
    case JTSK

    case ETRS89
    // Fallback case
    case unknown
}

public class DataGeometryCustomCoordinates: Codable {
    public var x: Double?
    public var y: Double?
    public init(
        x: Double?,
        y: Double?
    ) {
        self.x = x
        self.y = y
    }
}
