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

public class ValidateCompanyDataResultsRequest: Codable {
    public var endpoint: String
    public var code: String
    public var customId: String?
    public var query: ValidateCompanyDataResultsRequestQuery?
    public var options: ValidateCompanyDataResultsRequestOptions?
    public var client: ClientRequest?
    public init(
        endpoint: String,
        code: String,
        customId: String?,
        query: ValidateCompanyDataResultsRequestQuery?,
        options: ValidateCompanyDataResultsRequestOptions?,
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

public class ValidateCompanyDataResultsRequestQuery: Codable {
    public var name: String?
    public var country: String?
    public var registrationNumber: String?
    public var taxNumber: String?
    public var vatNumber: String?
    public init(
        name: String?,
        country: String?,
        registrationNumber: String?,
        taxNumber: String?,
        vatNumber: String?
    ) {
        self.name = name
        self.country = country
        self.registrationNumber = registrationNumber
        self.taxNumber = taxNumber
        self.vatNumber = vatNumber
    }
}

/**
 * Query options.
 */
public class ValidateCompanyDataResultsRequestOptions: Codable {
    public var dataScope: ValidateCompanyDataResultsRequestOptionsDataScope?
    public var dataSource: [String?]?
    public var includeTerminatedSubjects: Bool?
    public var resultsLimit: Int?
    public var zipFormat: Bool?
    public var cityFormat: ValidateCompanyDataResultsRequestOptionsCityFormat?
    public var countryFormat: ValidateCompanyDataResultsRequestOptionsCountryFormat?
    public var filterMode: ValidateCompanyDataResultsRequestOptionsFilterMode?
    public init(
        dataScope: ValidateCompanyDataResultsRequestOptionsDataScope?,
        dataSource: [String?]?,
        includeTerminatedSubjects: Bool?,
        resultsLimit: Int?,
        zipFormat: Bool?,
        cityFormat: ValidateCompanyDataResultsRequestOptionsCityFormat?,
        countryFormat: ValidateCompanyDataResultsRequestOptionsCountryFormat?,
        filterMode: ValidateCompanyDataResultsRequestOptionsFilterMode?
    ) {
        self.dataScope = dataScope
        self.dataSource = dataSource
        self.includeTerminatedSubjects = includeTerminatedSubjects
        self.resultsLimit = resultsLimit
        self.zipFormat = zipFormat
        self.cityFormat = cityFormat
        self.countryFormat = countryFormat
        self.filterMode = filterMode
    }
}

/**
 * Data scope of returned data.
 */
public enum ValidateCompanyDataResultsRequestOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case EXTENDED = "extended"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the city is returned. <b>Minimal</b> = Praha, <b>basic</b> = Praha 8, <b>extended</b> = Praha 8 - Karlín.
 */
public enum ValidateCompanyDataResultsRequestOptionsCityFormat: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the country is returned. Choices include local and international variants with their shortened counterparts as well as ISO 3166 alpha codes.
 */
public enum ValidateCompanyDataResultsRequestOptionsCountryFormat: String, Codable, UnknownCaseRepresentable {
    case ALPHA2 = "alpha2"

    case ALPHA3 = "alpha3"

    case LOCAL = "local"

    case LOCAL_SHORTENED = "localShortened"

    case INTERNATIONAL = "international"

    case INTERNATIONAL_SHORTENED = "internationalShortened"
    // Fallback case
    case unknown
}

/**
 * <b>Prefer</b> = prefer results matching the filter parameters, <b>limit</b> = limit to results matching the filter parameters.
 */
public enum ValidateCompanyDataResultsRequestOptionsFilterMode: String, Codable, UnknownCaseRepresentable {
    case LIMIT = "limit"

    case PREFER = "prefer"
    // Fallback case
    case unknown
}
