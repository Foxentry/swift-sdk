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

public class LocationLocalizationResults: Codable {
    public var resultsCount: Double
    public var results: [LocationLocalizationResultsResults?]
    public init(
        resultsCount: Double,
        results: [LocationLocalizationResultsResults?]
    ) {
        self.resultsCount = resultsCount
        self.results = results
    }
}

public class LocationLocalizationResultsResults: Codable {
    public var data: LocationData?
    public init(
        data: LocationData?
    ) {
        self.data = data
    }
}
