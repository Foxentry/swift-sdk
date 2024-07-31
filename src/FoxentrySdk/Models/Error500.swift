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
 * Internal Server Error.
 */
public class Error500: ResponseStatus500 {
    public var request: GlobalRequest?
    public var errors: [Error500Errors?]?
    public init(
        request: GlobalRequest?,
        errors: [Error500Errors?]?,
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
        errors = try container.decodeIfPresent([Error500Errors?].self, forKey: .errors)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case request
        case errors
    }
}

public enum Error500Errors: Codable {
    case error500InternalBilling(Error500InternalBilling)
    case error500InternalDatabaseConnection(Error500InternalDatabaseConnection)
    case error500InternalDatabaseError(Error500InternalDatabaseError)
    case error500InternalDatabaseNotAvailable(Error500InternalDatabaseNotAvailable)
    case error500InternalError(Error500InternalError)
    case error500Timeout(Error500Timeout)
    case error500RequestProjectNoData(Error500RequestProjectNoData)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(Error500InternalBilling.self) {
            self = .error500InternalBilling(result)
            return
        }
        if let result = try? container.decode(Error500InternalDatabaseConnection.self) {
            self = .error500InternalDatabaseConnection(result)
            return
        }
        if let result = try? container.decode(Error500InternalDatabaseError.self) {
            self = .error500InternalDatabaseError(result)
            return
        }
        if let result = try? container.decode(Error500InternalDatabaseNotAvailable.self) {
            self = .error500InternalDatabaseNotAvailable(result)
            return
        }
        if let result = try? container.decode(Error500InternalError.self) {
            self = .error500InternalError(result)
            return
        }
        if let result = try? container.decode(Error500Timeout.self) {
            self = .error500Timeout(result)
            return
        }
        if let result = try? container.decode(Error500RequestProjectNoData.self) {
            self = .error500RequestProjectNoData(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode Error500Errors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .error500InternalBilling(value):
            try value.encode(to: encoder)
        case let .error500InternalDatabaseConnection(value):
            try value.encode(to: encoder)
        case let .error500InternalDatabaseError(value):
            try value.encode(to: encoder)
        case let .error500InternalDatabaseNotAvailable(value):
            try value.encode(to: encoder)
        case let .error500InternalError(value):
            try value.encode(to: encoder)
        case let .error500Timeout(value):
            try value.encode(to: encoder)
        case let .error500RequestProjectNoData(value):
            try value.encode(to: encoder)
        }
    }

    public class Error500InternalBilling: Codable {
        public init(
        ) {}
    }

    public class Error500InternalDatabaseConnection: Codable {
        public init(
        ) {}
    }

    public class Error500InternalDatabaseError: Codable {
        public init(
        ) {}
    }

    public class Error500InternalDatabaseNotAvailable: Codable {
        public init(
        ) {}
    }

    public class Error500InternalError: Codable {
        public init(
        ) {}
    }

    public class Error500Timeout: Codable {
        public init(
        ) {}
    }

    public class Error500RequestProjectNoData: Codable {
        public init(
        ) {}
    }
}
