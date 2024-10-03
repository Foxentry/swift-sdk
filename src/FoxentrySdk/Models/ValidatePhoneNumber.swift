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
public class ValidatePhoneNumber: Codable {
    public var status: Int
    public var request: ValidatePhoneNumberResponseRequest
    public var response: ValidatePhoneNumberResults
    public var errors: [ValidatePhoneNumberErrors?]?
    public init(
        status: Int,
        request: ValidatePhoneNumberResponseRequest,
        response: ValidatePhoneNumberResults,
        errors: [ValidatePhoneNumberErrors?]?
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class ValidatePhoneNumberErrors: Codable {
    public init(
    ) {}
}
