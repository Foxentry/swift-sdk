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

public class LocationLocalizationRequest: Codable {
    public var customId: String?
    public var query: LocationLocalizationRequestQuery
    public var options: LocationLocalizationRequestOptions?
    public var client: LocationLocalizationRequestClient?
    public init(
        customId: String?,
        query: LocationLocalizationRequestQuery,
        options: LocationLocalizationRequestOptions?,
        client: LocationLocalizationRequestClient?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class LocationLocalizationRequestOptions: LocationRequestOptions {
    public var radius: Int?
    public var acceptNearest: Bool?
    public init(
        radius: Int?,
        acceptNearest: Bool?,
        dataScope: LocationRequestOptionsDataScope?,
        dataSource: [String?]?,
        resultsLimit: Int?,
        zipFormat: Bool?,
        cityFormat: LocationRequestOptionsCityFormat?,
        countryFormat: LocationRequestOptionsCountryFormat?,
        filterMode: LocationRequestOptionsFilterMode?
    ) {
        self.radius = radius
        self.acceptNearest = acceptNearest
        super.init(
            dataScope: dataScope,
            dataSource: dataSource,
            resultsLimit: resultsLimit,
            zipFormat: zipFormat,
            cityFormat: cityFormat,
            countryFormat: countryFormat,
            filterMode: filterMode
        )
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        radius = try container.decodeIfPresent(Int.self, forKey: .radius)
        acceptNearest = try container.decodeIfPresent(Bool.self, forKey: .acceptNearest)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case radius
        case acceptNearest
    }
}

public class LocationLocalizationRequestQuery: Codable {
    public var lat: Double
    public var lon: Double
    public init(
        lat: Double,
        lon: Double
    ) {
        self.lat = lat
        self.lon = lon
    }
}

/**
 * Additional information about your user (from whom you've obtained the data sent in query) in order to specify the results in response. Used mainly in web forms when you need more relevant search/autocomplete results.
 */
public class LocationLocalizationRequestClient: Codable {
    public var ip: String?
    public var country: String?
    public init(
        ip: String?,
        country: String?
    ) {
        self.ip = ip
        self.country = country
    }
}
