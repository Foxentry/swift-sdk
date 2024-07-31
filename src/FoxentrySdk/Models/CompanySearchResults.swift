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

public class CompanySearchResults: Codable {
    public var resultsCount: Double
    public var results: [CompanyResultsResponseResults]
    public init(
        resultsCount: Double,
        results: [CompanyResultsResponseResults]
    ) {
        self.resultsCount = resultsCount
        self.results = results
    }
}
