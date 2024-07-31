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
public class LocationLocalization: Codable {
    public var status: Int
    public var request: LocationLocalizationRequestModel
    public var response: LocationLocalizationResults
    public var errors: [LocationLocalizationErrors?]?
    public init(
        status: Int,
        request: LocationLocalizationRequestModel,
        response: LocationLocalizationResults,
        errors: [LocationLocalizationErrors?]?
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class LocationLocalizationRequestModel: GlobalRequest {
    public var query: LocationLocalizationRequestModelQuery?
    public var options: LocationLocalizationRequestModelOptions?
    public var client: LocationLocalizationRequestModelClient?
    public init(
        query: LocationLocalizationRequestModelQuery?,
        options: LocationLocalizationRequestModelOptions?,
        client: LocationLocalizationRequestModelClient?,
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
        query = try container.decodeIfPresent(LocationLocalizationRequestModelQuery.self, forKey: .query)
        options = try container.decodeIfPresent(LocationLocalizationRequestModelOptions.self, forKey: .options)
        client = try container.decodeIfPresent(LocationLocalizationRequestModelClient.self, forKey: .client)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case query
        case options
        case client
    }
}

public class LocationLocalizationRequestModelQuery: Codable {
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

public class LocationLocalizationRequestModelOptions: Codable {
    public init(
    ) {}
}

/**
 * Additional information about your user (from whom you've obtained the data sent in query) in order to specify the results in response. Used mainly in web forms when you need more relevant search/autocomplete results.
 */
public class LocationLocalizationRequestModelClient: Codable {
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

public class LocationLocalizationErrors: Codable {
    public init(
    ) {}
}
