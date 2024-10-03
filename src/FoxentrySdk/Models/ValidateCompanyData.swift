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
public class ValidateCompanyData: Codable {
    public var status: Int
    public var request: ValidateCompanyDataResultsRequest
    public var response: ValidateCompanyDataResults
    public var errors: [ValidateCompanyDataErrors?]?
    public init(
        status: Int,
        request: ValidateCompanyDataResultsRequest,
        response: ValidateCompanyDataResults,
        errors: [ValidateCompanyDataErrors?]?
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class ValidateCompanyDataErrors: Codable {
    public init(
    ) {}
}
