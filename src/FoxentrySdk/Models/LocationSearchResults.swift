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

public class LocationSearchResults: Codable {
    public var data: LocationData
    public init(
        data: LocationData
    ) {
        self.data = data
    }
}
