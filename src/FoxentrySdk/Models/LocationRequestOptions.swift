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
 * Query options.
 */
public class LocationRequestOptions: Codable {
    public var dataScope: LocationRequestOptionsDataScope?
    public var dataSource: [String?]?
    public var resultsLimit: Int?
    public var zipFormat: Bool?
    public var cityFormat: LocationRequestOptionsCityFormat?
    public var countryFormat: LocationRequestOptionsCountryFormat?
    public var filterMode: LocationRequestOptionsFilterMode?
    public init(
        dataScope: LocationRequestOptionsDataScope?,
        dataSource: [String?]?,
        resultsLimit: Int?,
        zipFormat: Bool?,
        cityFormat: LocationRequestOptionsCityFormat?,
        countryFormat: LocationRequestOptionsCountryFormat?,
        filterMode: LocationRequestOptionsFilterMode?
    ) {
        self.dataScope = dataScope
        self.dataSource = dataSource
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
public enum LocationRequestOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the city is returned. <b>Minimal</b> = Praha, <b>basic</b> = Praha 8, <b>extended</b> = Praha 8 - Karlín.
 */
public enum LocationRequestOptionsCityFormat: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the country is returned. Choices include local and international variants with their shortened counterparts as well as ISO 3166 alpha codes.
 */
public enum LocationRequestOptionsCountryFormat: String, Codable, UnknownCaseRepresentable {
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
public enum LocationRequestOptionsFilterMode: String, Codable, UnknownCaseRepresentable {
    case LIMIT = "limit"

    case PREFER = "prefer"
    // Fallback case
    case unknown
}
