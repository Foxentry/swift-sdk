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
public class CompanyDataRequestOption: Codable {
    public var dataScope: CompanyDataRequestOptionDataScope?
    public var dataSource: [String?]?
    public var includeTerminatedSubjects: Bool?
    public var zipFormat: Bool?
    public var cityFormat: CompanyDataRequestOptionCityFormat?
    public var countryFormat: CompanyDataRequestOptionCountryFormat?
    public init(
        dataScope: CompanyDataRequestOptionDataScope?,
        dataSource: [String?]?,
        includeTerminatedSubjects: Bool?,
        zipFormat: Bool?,
        cityFormat: CompanyDataRequestOptionCityFormat?,
        countryFormat: CompanyDataRequestOptionCountryFormat?
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
public enum CompanyDataRequestOptionDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case EXTENDED = "extended"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the city is returned. <b>Minimal</b> = Praha, <b>basic</b> = Praha 8, <b>extended</b> = Praha 8 - Karlín.
 */
public enum CompanyDataRequestOptionCityFormat: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the country is returned. Choices include local and international variants with their shortened counterparts as well as ISO 3166 alpha codes.
 */
public enum CompanyDataRequestOptionCountryFormat: String, Codable, UnknownCaseRepresentable {
    case ALPHA2 = "alpha2"

    case ALPHA3 = "alpha3"

    case LOCAL = "local"

    case LOCAL_SHORTENED = "localShortened"

    case INTERNATIONAL = "international"

    case INTERNATIONAL_SHORTENED = "internationalShortened"
    // Fallback case
    case unknown
}
