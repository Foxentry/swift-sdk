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
 * Not Found.
 */
public class Error404: ResponseStatus404 {
    public var request: GlobalRequest?
    public var errors: [Error404Errors?]?
    public init(
        request: GlobalRequest?,
        errors: [Error404Errors?]?,
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
        errors = try container.decodeIfPresent([Error404Errors?].self, forKey: .errors)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case request
        case errors
    }
}

public enum Error404Errors: Codable {
    case error404RequestApiVersion(Error404RequestApiVersion)
    case error404RequestEndpointNotFound(Error404RequestEndpointNotFound)
    case error404RequestProjectNotFound(Error404RequestProjectNotFound)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(Error404RequestApiVersion.self) {
            self = .error404RequestApiVersion(result)
            return
        }
        if let result = try? container.decode(Error404RequestEndpointNotFound.self) {
            self = .error404RequestEndpointNotFound(result)
            return
        }
        if let result = try? container.decode(Error404RequestProjectNotFound.self) {
            self = .error404RequestProjectNotFound(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode Error404Errors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .error404RequestApiVersion(value):
            try value.encode(to: encoder)
        case let .error404RequestEndpointNotFound(value):
            try value.encode(to: encoder)
        case let .error404RequestProjectNotFound(value):
            try value.encode(to: encoder)
        }
    }

    public class Error404RequestApiVersion: Codable {
        public init(
        ) {}
    }

    public class Error404RequestEndpointNotFound: Codable {
        public init(
        ) {}
    }

    public class Error404RequestProjectNotFound: Codable {
        public init(
        ) {}
    }
}
