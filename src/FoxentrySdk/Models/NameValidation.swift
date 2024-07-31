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
public class NameValidation: Codable {
    public var status: Int
    public var request: NameValidationResponseRequest
    public var response: NameValidationResults
    public var errors: [NameValidationErrors?]
    public init(
        status: Int,
        request: NameValidationResponseRequest,
        response: NameValidationResults,
        errors: [NameValidationErrors?]
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class NameValidationErrors: Codable {
    public init(
    ) {}
}
