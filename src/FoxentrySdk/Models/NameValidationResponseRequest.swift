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

public class NameValidationResponseRequest: Codable {
    public var endpoint: String
    public var code: String
    public var customId: String?
    public var query: NameValidationResponseRequestQuery?
    public var options: NameValidationResponseRequestOptions?
    public var client: NameValidationResponseRequestClient?
    public init(
        endpoint: String,
        code: String,
        customId: String?,
        query: NameValidationResponseRequestQuery?,
        options: NameValidationResponseRequestOptions?,
        client: NameValidationResponseRequestClient?
    ) {
        self.endpoint = endpoint
        self.code = code
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class NameValidationResponseRequestQuery: Codable {
    public var name: String?
    public var surname: String?
    public var nameSurname: String?
    public init(
        name: String?,
        surname: String?,
        nameSurname: String?
    ) {
        self.name = name
        self.surname = surname
        self.nameSurname = nameSurname
    }
}

/**
 * Query options.
 */
public class NameValidationResponseRequestOptions: Codable {
    public var dataScope: NameValidationResponseRequestOptionsDataScope?
    public var dataSource: [String?]?
    public var acceptDegrees: Bool?
    public var acceptContext: Bool?
    public var validationDepth: NameValidationResponseRequestOptionsValidationDepth?
    public var smartMode: Bool?
    public init(
        dataScope: NameValidationResponseRequestOptionsDataScope?,
        dataSource: [String?]?,
        acceptDegrees: Bool?,
        acceptContext: Bool?,
        validationDepth: NameValidationResponseRequestOptionsValidationDepth?,
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
public enum NameValidationResponseRequestOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * Specifies the depth of name validation. In other words how strict the validator should behave. <b>Minimal</b> = all the names are considered valid as long as there are no forbidden characters used or we are 100% sure the name is invalid. Usually the only thing corrected is format. <b>Moderate</b> = something in between the minimal and strict validation. There are more instances of corrections like typos etc. <b>Strict</b> = the most strict validation depth. Missing names in our database are marked as invalid, the scoring for corrections and suggestions is tweaked.
 */
public enum NameValidationResponseRequestOptionsValidationDepth: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case MODERATE = "moderate"

    case STRICT = "strict"
    // Fallback case
    case unknown
}

/**
 * The information about your client to help specify the search or validation.
 */
public class NameValidationResponseRequestClient: Codable {
    public var country: String?
    public var location: NameValidationResponseRequestClientLocation?
    public init(
        country: String?,
        location: NameValidationResponseRequestClientLocation?
    ) {
        self.country = country
        self.location = location
    }
}

/**
 * Client's location.
 */
public class NameValidationResponseRequestClientLocation: Codable {
    public var lat: Double?
    public var lon: Double?
    public init(
        lat: Double?,
        lon: Double?
    ) {
        self.lat = lat
        self.lon = lon
    }
}
