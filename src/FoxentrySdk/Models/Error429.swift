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
 * Too Many Requests.
 */
public class Error429: ResponseStatus429 {
    public var request: GlobalRequest?
    public var errors: [Error429Errors?]?
    public init(
        request: GlobalRequest?,
        errors: [Error429Errors?]?,
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
        errors = try container.decodeIfPresent([Error429Errors?].self, forKey: .errors)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case request
        case errors
    }
}

public enum Error429Errors: Codable {
    case error429RequestBillingServiceLimit(Error429RequestBillingServiceLimit)
    case error429RequestRateLimitCreditPerDay(Error429RequestRateLimitCreditPerDay)
    case error429RequestRateLimitCreditPerIp(Error429RequestRateLimitCreditPerIp)
    case error429RequestRateLimitTooManyRequests(Error429RequestRateLimitTooManyRequests)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(Error429RequestBillingServiceLimit.self) {
            self = .error429RequestBillingServiceLimit(result)
            return
        }
        if let result = try? container.decode(Error429RequestRateLimitCreditPerDay.self) {
            self = .error429RequestRateLimitCreditPerDay(result)
            return
        }
        if let result = try? container.decode(Error429RequestRateLimitCreditPerIp.self) {
            self = .error429RequestRateLimitCreditPerIp(result)
            return
        }
        if let result = try? container.decode(Error429RequestRateLimitTooManyRequests.self) {
            self = .error429RequestRateLimitTooManyRequests(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode Error429Errors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .error429RequestBillingServiceLimit(value):
            try value.encode(to: encoder)
        case let .error429RequestRateLimitCreditPerDay(value):
            try value.encode(to: encoder)
        case let .error429RequestRateLimitCreditPerIp(value):
            try value.encode(to: encoder)
        case let .error429RequestRateLimitTooManyRequests(value):
            try value.encode(to: encoder)
        }
    }

    public class Error429RequestBillingServiceLimit: Codable {
        public init(
        ) {}
    }

    public class Error429RequestRateLimitCreditPerDay: Codable {
        public init(
        ) {}
    }

    public class Error429RequestRateLimitCreditPerIp: Codable {
        public init(
        ) {}
    }

    public class Error429RequestRateLimitTooManyRequests: Codable {
        public init(
        ) {}
    }
}
