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

public class ValidatePhoneNumberResponseRequest: Codable {
    public var endpoint: String
    public var code: String
    public var customId: String?
    public var query: ValidatePhoneNumberResponseRequestQuery?
    public var options: ValidatePhoneNumberResponseRequestOptions?
    public var client: ClientRequest?
    public init(
        endpoint: String,
        code: String,
        customId: String?,
        query: ValidatePhoneNumberResponseRequestQuery?,
        options: ValidatePhoneNumberResponseRequestOptions?,
        client: ClientRequest?
    ) {
        self.endpoint = endpoint
        self.code = code
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class ValidatePhoneNumberResponseRequestQuery: Codable {
    public var prefix: String?
    public var number: String?
    public var numberWithPrefix: String?
    public init(
        prefix: String?,
        number: String?,
        numberWithPrefix: String?
    ) {
        self.prefix = prefix
        self.number = number
        self.numberWithPrefix = numberWithPrefix
    }
}

/**
 * Query options.
 */
public class ValidatePhoneNumberResponseRequestOptions: Codable {
    public var validationType: String?
    public var allowedPrefixes: [String?]?
    public var formatNumber: Bool?
    public var preferredPrefixes: [String?]?
    public var defaultPrefix: String?
    public init(
        validationType: String?,
        allowedPrefixes: [String?]?,
        formatNumber: Bool?,
        preferredPrefixes: [String?]?,
        defaultPrefix: String?
    ) {
        self.validationType = validationType
        self.allowedPrefixes = allowedPrefixes
        self.formatNumber = formatNumber
        self.preferredPrefixes = preferredPrefixes
        self.defaultPrefix = defaultPrefix
    }
}
