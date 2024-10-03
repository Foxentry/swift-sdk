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

public class LocationSearchResponse: Codable {
    public var resultsCount: Int
    public var results: [LocationSearchResults]
    public init(
        resultsCount: Int,
        results: [LocationSearchResults]
    ) {
        self.resultsCount = resultsCount
        self.results = results
    }
}
