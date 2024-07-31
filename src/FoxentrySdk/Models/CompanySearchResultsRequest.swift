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

public class CompanySearchResultsRequest: Codable {
    public var endpoint: String
    public var code: String
    public var customId: String?
    public var query: CompanySearchResultsRequestQuery?
    public var options: CompanySearchResultsRequestOptions?
    public var client: ClientRequest?
    public init(
        endpoint: String,
        code: String,
        customId: String?,
        query: CompanySearchResultsRequestQuery?,
        options: CompanySearchResultsRequestOptions?,
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

public class CompanySearchResultsRequestQuery: Codable {
    public var type: CompanySearchResultsRequestQueryType?
    public var value: String?
    public var filter: CompanySearchResultsRequestQueryFilter?
    public init(
        type: CompanySearchResultsRequestQueryType?,
        value: String?,
        filter: CompanySearchResultsRequestQueryFilter?
    ) {
        self.type = type
        self.value = value
        self.filter = filter
    }
}

/**
 * Type of search.
 */
public enum CompanySearchResultsRequestQueryType: String, Codable, UnknownCaseRepresentable {
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
public class CompanySearchResultsRequestQueryFilter: Codable {
    public var registrationNumber: String?
    public var taxNumber: String?
    public var vatNumber: String?
    public var name: String?
    public var country: String?
    public init(
        registrationNumber: String?,
        taxNumber: String?,
        vatNumber: String?,
        name: String?,
        country: String?
    ) {
        self.registrationNumber = registrationNumber
        self.taxNumber = taxNumber
        self.vatNumber = vatNumber
        self.name = name
        self.country = country
    }
}

/**
 * Query options.
 */
public class CompanySearchResultsRequestOptions: Codable {
    public var dataScope: CompanySearchResultsRequestOptionsDataScope?
    public var dataSource: [String?]?
    public var resultsLimit: Int?
    public var includeTerminatedSubjects: Bool?
    public var filterMode: CompanySearchResultsRequestOptionsFilterMode?
    public var filterAcceptFormat: Bool?
    public var filterAcceptAlternatives: Bool?
    public var filterExactMatch: Bool?
    public var zipFormat: Bool?
    public var cityFormat: CompanySearchResultsRequestOptionsCityFormat?
    public var countryFormat: CompanySearchResultsRequestOptionsCountryFormat?
    public init(
        dataScope: CompanySearchResultsRequestOptionsDataScope?,
        dataSource: [String?]?,
        resultsLimit: Int?,
        includeTerminatedSubjects: Bool?,
        filterMode: CompanySearchResultsRequestOptionsFilterMode?,
        filterAcceptFormat: Bool?,
        filterAcceptAlternatives: Bool?,
        filterExactMatch: Bool?,
        zipFormat: Bool?,
        cityFormat: CompanySearchResultsRequestOptionsCityFormat?,
        countryFormat: CompanySearchResultsRequestOptionsCountryFormat?
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
public enum CompanySearchResultsRequestOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case EXTENDED = "extended"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * <b>Prefer</b> = prefer results matching the filter parameters, <b>limit</b> = limit to results matching the filter parameters.
 */
public enum CompanySearchResultsRequestOptionsFilterMode: String, Codable, UnknownCaseRepresentable {
    case LIMIT = "limit"

    case PREFER = "prefer"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the city is returned. <b>Minimal</b> = Praha, <b>basic</b> = Praha 8, <b>extended</b> = Praha 8 - Karlín.
 */
public enum CompanySearchResultsRequestOptionsCityFormat: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the country is returned. Choices include local and international variants with their shortened counterparts as well as ISO 3166 alpha codes.
 */
public enum CompanySearchResultsRequestOptionsCountryFormat: String, Codable, UnknownCaseRepresentable {
    case ALPHA2 = "alpha2"

    case ALPHA3 = "alpha3"

    case LOCAL = "local"

    case LOCAL_SHORTENED = "localShortened"

    case INTERNATIONAL = "international"

    case INTERNATIONAL_SHORTENED = "internationalShortened"
    // Fallback case
    case unknown
}
