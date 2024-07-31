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

public class ValidatePhoneNumberRequest: Codable {
    public var customId: String?
    public var query: ValidatePhoneNumberRequestQuery
    public var options: ValidatePhoneNumberRequestOptions?
    public var client: ClientRequest?
    public init(
        customId: String?,
        query: ValidatePhoneNumberRequestQuery,
        options: ValidatePhoneNumberRequestOptions?,
        client: ClientRequest?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public enum ValidatePhoneNumberRequestQuery: Codable {
    case byPrefixAndNumber(ByPrefixAndNumber)
    case byNumberWithPrefix(ByNumberWithPrefix)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ByPrefixAndNumber.self) {
            self = .byPrefixAndNumber(result)
            return
        }
        if let result = try? container.decode(ByNumberWithPrefix.self) {
            self = .byNumberWithPrefix(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode AnyCodable"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .byPrefixAndNumber(value):
            try value.encode(to: encoder)
        case let .byNumberWithPrefix(value):
            try value.encode(to: encoder)
        }
    }

    public class ByPrefixAndNumber: Codable {
        var prefix: String
        var number: String
        public init(
            prefix: String,
            number: String
        ) {
            self.prefix = prefix
            self.number = number
        }
    }

    public class ByNumberWithPrefix: Codable {
        var numberWithPrefix: String
        public init(
            numberWithPrefix: String
        ) {
            self.numberWithPrefix = numberWithPrefix
        }
    }
}

/**
 * Query options.
 */
public class ValidatePhoneNumberRequestOptions: Codable {
    public var validationType: ValidatePhoneNumberRequestOptionsValidationType?
    public var allowedPrefixes: [String?]?
    public var preferredPrefixes: [String?]?
    public var defaultPrefix: String?
    public var formatNumber: Bool?
    public init(
        validationType: ValidatePhoneNumberRequestOptionsValidationType?,
        allowedPrefixes: [String?]?,
        preferredPrefixes: [String?]?,
        defaultPrefix: String?,
        formatNumber: Bool?
    ) {
        self.validationType = validationType
        self.allowedPrefixes = allowedPrefixes
        self.preferredPrefixes = preferredPrefixes
        self.defaultPrefix = defaultPrefix
        self.formatNumber = formatNumber
    }
}

/**
 * Type of validation.
 */
public enum ValidatePhoneNumberRequestOptionsValidationType: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}
