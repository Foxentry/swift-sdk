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

public class CompanySearchRequest: Codable {
    public var customId: String?
    public var query: CompanySearchRequestQuery
    public var options: CompanySearchRequestOptions?
    public var client: ClientRequest?
    public init(
        customId: String?,
        query: CompanySearchRequestQuery,
        options: CompanySearchRequestOptions?,
        client: ClientRequest?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class CompanySearchRequestQuery: Codable {
    public var type: CompanySearchRequestQueryType
    public var value: String
    public var filter: CompanySearchRequestQueryFilter?
    public init(
        type: CompanySearchRequestQueryType,
        value: String,
        filter: CompanySearchRequestQueryFilter?
    ) {
        self.type = type
        self.value = value
        self.filter = filter
    }
}

/**
 * Type of search.
 */
public enum CompanySearchRequestQueryType: String, Codable, UnknownCaseRepresentable {
    case NAME = "name"

    case REGISTRATION_NUMBER = "registrationNumber"

    case TAX_NUMBER = "taxNumber"

    case VAT_NUMBER = "vatNumber"
    // Fallback case
    case unknown
}

/**
 * Additional filter in order to specify the search results. You can for example set as a filter country CZ, so the the search engine would look for the companies only in the Czech republic. Pay attention to the options, which determines how the filter should behave.
 */
public class CompanySearchRequestQueryFilter: Codable {
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
public class CompanySearchRequestOptions: Codable {
    public var dataScope: CompanySearchRequestOptionsDataScope?
    public var dataSource: [String?]?
    public var resultsLimit: Int?
    public var includeTerminatedSubjects: Bool?
    public var filterMode: CompanySearchRequestOptionsFilterMode?
    public var filterAcceptFormat: Bool?
    public var filterAcceptAlternatives: Bool?
    public var filterExactMatch: Bool?
    public var zipFormat: Bool?
    public var cityFormat: CompanySearchRequestOptionsCityFormat?
    public var countryFormat: CompanySearchRequestOptionsCountryFormat?
    public init(
        dataScope: CompanySearchRequestOptionsDataScope?,
        dataSource: [String?]?,
        resultsLimit: Int?,
        includeTerminatedSubjects: Bool?,
        filterMode: CompanySearchRequestOptionsFilterMode?,
        filterAcceptFormat: Bool?,
        filterAcceptAlternatives: Bool?,
        filterExactMatch: Bool?,
        zipFormat: Bool?,
        cityFormat: CompanySearchRequestOptionsCityFormat?,
        countryFormat: CompanySearchRequestOptionsCountryFormat?
    ) {
        self.dataScope = dataScope
        self.dataSource = dataSource
        self.resultsLimit = resultsLimit
        self.includeTerminatedSubjects = includeTerminatedSubjects
        self.filterMode = filterMode
        self.filterAcceptFormat = filterAcceptFormat
        self.filterAcceptAlternatives = filterAcceptAlternatives
        self.filterExactMatch = filterExactMatch
        self.zipFormat = zipFormat
        self.cityFormat = cityFormat
        self.countryFormat = countryFormat
    }
}

/**
 * Data scope of returned data.
 */
public enum CompanySearchRequestOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case EXTENDED = "extended"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * <b>Prefer</b> = prefer results matching the filter parameters, <b>limit</b> = limit to results matching the filter parameters.
 */
public enum CompanySearchRequestOptionsFilterMode: String, Codable, UnknownCaseRepresentable {
    case LIMIT = "limit"

    case PREFER = "prefer"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the city is returned. <b>Minimal</b> = Praha, <b>basic</b> = Praha 8, <b>extended</b> = Praha 8 - Karlín.
 */
public enum CompanySearchRequestOptionsCityFormat: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the country is returned. Choices include local and international variants with their shortened counterparts as well as ISO 3166 alpha codes.
 */
public enum CompanySearchRequestOptionsCountryFormat: String, Codable, UnknownCaseRepresentable {
    case ALPHA2 = "alpha2"

    case ALPHA3 = "alpha3"

    case LOCAL = "local"

    case LOCAL_SHORTENED = "localShortened"

    case INTERNATIONAL = "international"

    case INTERNATIONAL_SHORTENED = "internationalShortened"
    // Fallback case
    case unknown
}
