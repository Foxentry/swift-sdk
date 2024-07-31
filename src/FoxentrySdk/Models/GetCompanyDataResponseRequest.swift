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

public class GetCompanyDataResponseRequest: Codable {
    public var endpoint: String
    public var code: String
    public var customId: String?
    public var query: GetCompanyDataResponseRequestQuery?
    public var options: GetCompanyDataResponseRequestOptions?
    public var client: ClientRequest?
    public init(
        endpoint: String,
        code: String,
        customId: String?,
        query: GetCompanyDataResponseRequestQuery?,
        options: GetCompanyDataResponseRequestOptions?,
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

public class GetCompanyDataResponseRequestQuery: Codable {
    public var country: String?
    public var registrationNumber: AnyCodable?
    public init(
        country: String?,
        registrationNumber: AnyCodable?
    ) {
        self.country = country
        self.registrationNumber = registrationNumber
    }
}

/**
 * Query options.
 */
public class GetCompanyDataResponseRequestOptions: Codable {
    public var dataScope: GetCompanyDataResponseRequestOptionsDataScope?
    public var dataSource: [String?]?
    public var includeTerminatedSubjects: Bool?
    public var zipFormat: Bool?
    public var cityFormat: GetCompanyDataResponseRequestOptionsCityFormat?
    public var countryFormat: GetCompanyDataResponseRequestOptionsCountryFormat?
    public init(
        dataScope: GetCompanyDataResponseRequestOptionsDataScope?,
        dataSource: [String?]?,
        includeTerminatedSubjects: Bool?,
        zipFormat: Bool?,
        cityFormat: GetCompanyDataResponseRequestOptionsCityFormat?,
        countryFormat: GetCompanyDataResponseRequestOptionsCountryFormat?
    ) {
        self.dataScope = dataScope
        self.dataSource = dataSource
        self.includeTerminatedSubjects = includeTerminatedSubjects
        self.zipFormat = zipFormat
        self.cityFormat = cityFormat
        self.countryFormat = countryFormat
    }
}

/**
 * Data scope of returned data.
 */
public enum GetCompanyDataResponseRequestOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case EXTENDED = "extended"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the city is returned. <b>Minimal</b> = Praha, <b>basic</b> = Praha 8, <b>extended</b> = Praha 8 - Karlín.
 */
public enum GetCompanyDataResponseRequestOptionsCityFormat: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the country is returned. Choices include local and international variants with their shortened counterparts as well as ISO 3166 alpha codes.
 */
public enum GetCompanyDataResponseRequestOptionsCountryFormat: String, Codable, UnknownCaseRepresentable {
    case ALPHA2 = "alpha2"

    case ALPHA3 = "alpha3"

    case LOCAL = "local"

    case LOCAL_SHORTENED = "localShortened"

    case INTERNATIONAL = "international"

    case INTERNATIONAL_SHORTENED = "internationalShortened"
    // Fallback case
    case unknown
}
