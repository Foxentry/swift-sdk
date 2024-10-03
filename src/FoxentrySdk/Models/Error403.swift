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
 * Forbidden.
 */
public class Error403: ResponseStatus403 {
    public var request: GlobalRequest?
    public var errors: [Error403Errors?]?
    public init(
        request: GlobalRequest?,
        errors: [Error403Errors?]?,
        status: Int?
    ) {
        self.request = request
        self.errors = errors
        super.init(
            status: status
        )
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        request = try container.decodeIfPresent(GlobalRequest.self, forKey: .request)
        errors = try container.decodeIfPresent([Error403Errors?].self, forKey: .errors)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case request
        case errors
    }
}

public enum Error403Errors: Codable {
    case error403RequestAuthKey(Error403RequestAuthKey)
    case error403RequestAuthToken(Error403RequestAuthToken)
    case error403RequestNotAllowedDomain(Error403RequestNotAllowedDomain)
    case error403RequestNotAllowedIp(Error403RequestNotAllowedIp)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(Error403RequestAuthKey.self) {
            self = .error403RequestAuthKey(result)
            return
        }
        if let result = try? container.decode(Error403RequestAuthToken.self) {
            self = .error403RequestAuthToken(result)
            return
        }
        if let result = try? container.decode(Error403RequestNotAllowedDomain.self) {
            self = .error403RequestNotAllowedDomain(result)
            return
        }
        if let result = try? container.decode(Error403RequestNotAllowedIp.self) {
            self = .error403RequestNotAllowedIp(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode Error403Errors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .error403RequestAuthKey(value):
            try value.encode(to: encoder)
        case let .error403RequestAuthToken(value):
            try value.encode(to: encoder)
        case let .error403RequestNotAllowedDomain(value):
            try value.encode(to: encoder)
        case let .error403RequestNotAllowedIp(value):
            try value.encode(to: encoder)
        }
    }

    public class Error403RequestAuthKey: Codable {
        public init(
        ) {}
    }

    public class Error403RequestAuthToken: Codable {
        public init(
        ) {}
    }

    public class Error403RequestNotAllowedDomain: Codable {
        public init(
        ) {}
    }

    public class Error403RequestNotAllowedIp: Codable {
        public init(
        ) {}
    }
}
