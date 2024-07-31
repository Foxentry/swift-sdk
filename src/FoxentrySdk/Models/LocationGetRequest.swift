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

public class LocationGetRequest: Codable {
    public var customId: String?
    public var query: LocationGetRequestQuery
    public var options: LocationGetRequestOptions?
    public var client: ClientRequest?
    public init(
        customId: String?,
        query: LocationGetRequestQuery,
        options: LocationGetRequestOptions?,
        client: ClientRequest?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class LocationGetRequestQuery: Codable {
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
public class LocationGetRequestOptions: Codable {
    public var idType: LocationGetRequestOptionsIdType
    public var dataScope: LocationGetRequestOptionsDataScope
    public var dataSource: [String?]?
    public var zipFormat: Bool?
    public var cityFormat: LocationGetRequestOptionsCityFormat?
    public init(
        idType: LocationGetRequestOptionsIdType,
        dataScope: LocationGetRequestOptionsDataScope,
        dataSource: [String?]?,
        zipFormat: Bool?,
        cityFormat: LocationGetRequestOptionsCityFormat?
    ) {
        self.idType = idType
        self.dataScope = dataScope
        self.dataSource = dataSource
        self.zipFormat = zipFormat
        self.cityFormat = cityFormat
    }
}

/**
 * Internal is assigned by Foxentry. External ID may vary for every supported country. CZ = RUIAN, PL = Government data, SK = no external ID.
 */
public enum LocationGetRequestOptionsIdType: String, Codable, UnknownCaseRepresentable {
    case INTERNAL = "internal"

    case EXTERNAL = "external"
    // Fallback case
    case unknown
}

/**
 * Data scope of returned data.
 */
public enum LocationGetRequestOptionsDataScope: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * This option determines the format in which the city is returned. <b>Minimal</b> = Praha, <b>basic</b> = Praha 8, <b>extended</b> = Praha 8 - Karlín.
 */
public enum LocationGetRequestOptionsCityFormat: String, Codable, UnknownCaseRepresentable {
    case MINIMAL = "minimal"

    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}
