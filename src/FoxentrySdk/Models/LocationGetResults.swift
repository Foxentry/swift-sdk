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

public class LocationGetResults: Codable {
    public var results: [LocationGetResultsResults?]
    public init(
        results: [LocationGetResultsResults?]
    ) {
        self.results = results
    }
}

public class LocationGetResultsResults: Codable {
    public var data: LocationData
    public init(
        data: LocationData
    ) {
        self.data = data
    }
}
