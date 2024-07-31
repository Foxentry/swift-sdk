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
 * Successful response
 */
public class LocationGet: Codable {
    public var status: Int
    public var request: LocationGetRequestModel
    public var response: LocationGetResults
    public var errors: [LocationGetErrors?]
    public init(
        status: Int,
        request: LocationGetRequestModel,
        response: LocationGetResults,
        errors: [LocationGetErrors?]
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class LocationGetRequestModel: GlobalRequest {
    public var query: LocationGetRequestModelQuery?
    public var options: LocationGetRequestModelOptions?
    public var client: ClientRequest?
    public init(
        query: LocationGetRequestModelQuery?,
        options: LocationGetRequestModelOptions?,
        client: ClientRequest?,
        endpoint: String,
        code: String,
        customId: String?
    ) {
        self.query = query
        self.options = options
        self.client = client
        super.init(
            endpoint: endpoint,
            code: code,
            customId: customId
        )
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        query = try container.decodeIfPresent(LocationGetRequestModelQuery.self, forKey: .query)
        options = try container.decodeIfPresent(LocationGetRequestModelOptions.self, forKey: .options)
        client = try container.decodeIfPresent(ClientRequest.self, forKey: .client)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case query
        case options
        case client
    }
}

public class LocationGetRequestModelQuery: Codable {
    public var country: String
    public var id: String
    public init(
        country: String,
        id: String
    ) {
        self.country = country
        self.id = id
    }
}

/**
 * Query options.
 */
public class LocationGetRequestModelOptions: Codable {
    public var idType: LocationGetRequestModelOptionsIdType
    public var dataScope: LocationGetRequestModelOptionsDataScope
    public var dataSource: [String?]?
    public var zipFormat: Bool?
    public var cityFormat: LocationGetRequestModelOptionsCityFormat?
    public var countryFormat: LocationGetRequestModelOptionsCountryFormat?
    public init(
        idType: LocationGetRequestModelOptionsIdType,
        dataScope: LocationGetRequestModelOptionsDataScope,
        dataSource: [String?]?,
        zipFormat: Bool?,
        cityFormat: LocationGetRequestModelOptionsCityFormat?,
        countryFormat: LocationGetRequestModelOptionsCountryFormat?
    ) {
        self.idType = idType
        self.dataScope = dataScope
        self.dataSource = dataSource
        self.zipFormat = zipFormat
        self.cityFormat = cityFormat
        self.countryFormat = countryFormat
    }
}

/**
 * Internal is assigned by Foxentry. External ID may vary for every supported country. CZ = RUIAN, PL = Government data, SK = no external ID.
 */
public enum LocationGetRequestModelOptionsIdType: String, Codable, UnknownCaseRepresentable {
    case INTERNAL = "internal"

    case EXTERNAL = "external"
    // Fallback case
    case unknown
}

/**
 * Data scope of returned data.
 */
public enum LocationGetRequestModelOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the city is returned. <b>Minimal</b> = Praha, <b>basic</b> = Praha 8, <b>extended</b> = Praha 8 - Karlín.
 */
public enum LocationGetRequestModelOptionsCityFormat: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the country is returned. Choices include local and international variants with their shortened counterparts as well as ISO 3166 alpha codes.
 */
public enum LocationGetRequestModelOptionsCountryFormat: String, Codable, UnknownCaseRepresentable {
    case ALPHA2 = "alpha2"

    case ALPHA3 = "alpha3"

    case LOCAL = "local"

    case LOCAL_SHORTENED = "localShortened"

    case INTERNATIONAL = "international"

    case INTERNATIONAL_SHORTENED = "internationalShortened"
    // Fallback case
    case unknown
}

public class LocationGetErrors: Codable {
    public init(
    ) {}
}
