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

/**
 * Successful response
 */
public class CompanySearch: Codable {
    public var status: Int
    public var request: CompanySearchResultsRequest
    public var response: CompanySearchResults
    public var errors: [CompanySearchErrors?]?
    public init(
        status: Int,
        request: CompanySearchResultsRequest,
        response: CompanySearchResults,
        errors: [CompanySearchErrors?]?
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class CompanySearchErrors: Codable {
    public init(
    ) {}
}
