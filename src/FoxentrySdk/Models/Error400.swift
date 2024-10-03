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
 * Bad Request.
 */
public class Error400: ResponseStatus400 {
    public var request: GlobalRequest?
    public var errors: [Error400Errors?]?
    public init(
        request: GlobalRequest?,
        errors: [Error400Errors?]?,
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
        errors = try container.decodeIfPresent([Error400Errors?].self, forKey: .errors)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case request
        case errors
    }
}

public enum Error400Errors: Codable {
    case error400RequestBodyEmpty(Error400RequestBodyEmpty)
    case error400RequestBodyNotJson(Error400RequestBodyNotJson)
    case error400RequestBodyNoRequest(Error400RequestBodyNoRequest)
    case error400RequestBodyTooBig(Error400RequestBodyTooBig)
    case error400RequestOptionsParameterNotSupported(Error400RequestOptionsParameterNotSupported)
    case error400RequestOptionParameterValueNotSupported(Error400RequestOptionParameterValueNotSupported)
    case error400RequestQueryNotSent(Error400RequestQueryNotSent)
    case error400RequestQueryParameterCombination(Error400RequestQueryParameterCombination)
    case error400RequestOptionsParameterCombination(Error400RequestOptionsParameterCombination)
    case error400RequestQueryParameterMissing(Error400RequestQueryParameterMissing)
    case error400RequestQueryParameterNotSupported(Error400RequestQueryParameterNotSupported)
    case error400RequestQueryParameterRequired(Error400RequestQueryParameterRequired)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(Error400RequestBodyEmpty.self) {
            self = .error400RequestBodyEmpty(result)
            return
        }
        if let result = try? container.decode(Error400RequestBodyNotJson.self) {
            self = .error400RequestBodyNotJson(result)
            return
        }
        if let result = try? container.decode(Error400RequestBodyNoRequest.self) {
            self = .error400RequestBodyNoRequest(result)
            return
        }
        if let result = try? container.decode(Error400RequestBodyTooBig.self) {
            self = .error400RequestBodyTooBig(result)
            return
        }
        if let result = try? container.decode(Error400RequestOptionsParameterNotSupported.self) {
            self = .error400RequestOptionsParameterNotSupported(result)
            return
        }
        if let result = try? container.decode(Error400RequestOptionParameterValueNotSupported.self) {
            self = .error400RequestOptionParameterValueNotSupported(result)
            return
        }
        if let result = try? container.decode(Error400RequestQueryNotSent.self) {
            self = .error400RequestQueryNotSent(result)
            return
        }
        if let result = try? container.decode(Error400RequestQueryParameterCombination.self) {
            self = .error400RequestQueryParameterCombination(result)
            return
        }
        if let result = try? container.decode(Error400RequestOptionsParameterCombination.self) {
            self = .error400RequestOptionsParameterCombination(result)
            return
        }
        if let result = try? container.decode(Error400RequestQueryParameterMissing.self) {
            self = .error400RequestQueryParameterMissing(result)
            return
        }
        if let result = try? container.decode(Error400RequestQueryParameterNotSupported.self) {
            self = .error400RequestQueryParameterNotSupported(result)
            return
        }
        if let result = try? container.decode(Error400RequestQueryParameterRequired.self) {
            self = .error400RequestQueryParameterRequired(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode Error400Errors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .error400RequestBodyEmpty(value):
            try value.encode(to: encoder)
        case let .error400RequestBodyNotJson(value):
            try value.encode(to: encoder)
        case let .error400RequestBodyNoRequest(value):
            try value.encode(to: encoder)
        case let .error400RequestBodyTooBig(value):
            try value.encode(to: encoder)
        case let .error400RequestOptionsParameterNotSupported(value):
            try value.encode(to: encoder)
        case let .error400RequestOptionParameterValueNotSupported(value):
            try value.encode(to: encoder)
        case let .error400RequestQueryNotSent(value):
            try value.encode(to: encoder)
        case let .error400RequestQueryParameterCombination(value):
            try value.encode(to: encoder)
        case let .error400RequestOptionsParameterCombination(value):
            try value.encode(to: encoder)
        case let .error400RequestQueryParameterMissing(value):
            try value.encode(to: encoder)
        case let .error400RequestQueryParameterNotSupported(value):
            try value.encode(to: encoder)
        case let .error400RequestQueryParameterRequired(value):
            try value.encode(to: encoder)
        }
    }

    public class Error400RequestBodyEmpty: Codable {
        public init(
        ) {}
    }

    public class Error400RequestBodyNotJson: Codable {
        public init(
        ) {}
    }

    public class Error400RequestBodyNoRequest: Codable {
        public init(
        ) {}
    }

    public class Error400RequestBodyTooBig: Codable {
        public init(
        ) {}
    }

    public class Error400RequestOptionsParameterNotSupported: Codable {
        public init(
        ) {}
    }

    public class Error400RequestOptionParameterValueNotSupported: Codable {
        public init(
        ) {}
    }

    public class Error400RequestQueryNotSent: Codable {
        public init(
        ) {}
    }

    public class Error400RequestQueryParameterCombination: Codable {
        public init(
        ) {}
    }

    public class Error400RequestOptionsParameterCombination: Codable {
        public init(
        ) {}
    }

    public class Error400RequestQueryParameterMissing: Codable {
        public init(
        ) {}
    }

    public class Error400RequestQueryParameterNotSupported: Codable {
        public init(
        ) {}
    }

    public class Error400RequestQueryParameterRequired: Codable {
        public init(
        ) {}
    }
}
