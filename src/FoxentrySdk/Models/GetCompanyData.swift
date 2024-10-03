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
public class GetCompanyData: Codable {
    public var status: Int
    public var request: GetCompanyDataResponseRequest
    public var response: GetCompanyDataResults
    public var errors: [GetCompanyDataErrors?]?
    public init(
        status: Int,
        request: GetCompanyDataResponseRequest,
        response: GetCompanyDataResults,
        errors: [GetCompanyDataErrors?]?
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class GetCompanyDataErrors: Codable {
    public init(
    ) {}
}
