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

public class NameValidationRequest: Codable {
    public var customId: String?
    public var query: NameValidationRequestQuery
    public var options: NameValidationRequestOptions?
    public var client: ClientRequest?
    public init(
        customId: String?,
        query: NameValidationRequestQuery,
        options: NameValidationRequestOptions?,
        client: ClientRequest?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public enum NameValidationRequestQuery: Codable {
    case byNameAndSurname(ByNameAndSurname)
    case byNameSurname(ByNameSurname)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ByNameAndSurname.self) {
            self = .byNameAndSurname(result)
            return
        }
        if let result = try? container.decode(ByNameSurname.self) {
            self = .byNameSurname(result)
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
        case let .byNameAndSurname(value):
            try value.encode(to: encoder)
        case let .byNameSurname(value):
            try value.encode(to: encoder)
        }
    }

    public class ByNameAndSurname: Codable {
        var name: String?
        var surname: String?
        public init(
            name: String?,
            surname: String?
        ) {
            self.name = name
            self.surname = surname
        }
    }

    public class ByNameSurname: Codable {
        var nameSurname: String!
        public init(
            nameSurname: String!
        ) {
            self.nameSurname = nameSurname
        }
    }
}

/**
 * Query options.
 */
public class NameValidationRequestOptions: Codable {
    public var dataScope: NameValidationRequestOptionsDataScope?
    public var dataSource: [String?]?
    public var acceptDegrees: Bool?
    public var acceptContext: Bool?
    public var validationDepth: NameValidationRequestOptionsValidationDepth?
    public var smartMode: Bool?
    public init(
        dataScope: NameValidationRequestOptionsDataScope?,
        dataSource: [String?]?,
        acceptDegrees: Bool?,
        acceptContext: Bool?,
        validationDepth: NameValidationRequestOptionsValidationDepth?,
        smartMode: Bool?
    ) {
        self.dataScope = dataScope
        self.dataSource = dataSource
        self.acceptDegrees = acceptDegrees
        self.acceptContext = acceptContext
        self.validationDepth = validationDepth
        self.smartMode = smartMode
    }
}

/**
 * Data scope of returned data. In full datascope information like <b>gender</b>, <b>vocative</b> and <b>date</b> of the name days is returned.
 */
public enum NameValidationRequestOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * Specifies the depth of name validation. In other words how strict the validator should behave. <b>Minimal</b> = all the names are considered valid as long as there are no forbidden characters used or we are 100% sure the name is invalid. Usually the only thing corrected is format. <b>Moderate</b> = something in between the minimal and strict validation. There are more instances of corrections like typos etc. <b>Strict</b> = the most strict validation depth. Missing names in our database are marked as invalid, the scoring for corrections and suggestions is tweaked.
 */
public enum NameValidationRequestOptionsValidationDepth: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case MODERATE = "moderate"

    case STRICT = "strict"
    // Fallback case
    case unknown
}
