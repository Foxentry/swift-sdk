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
 * Additional information about your user (from whom you've obtained the data sent in query) in order to specify the results in response. Used mainly in web forms when you need more relevant search/autocomplete results.
 */
public class ClientRequest: Codable {
    public var ip: String?
    public var country: String?
    public var location: ClientRequestLocation?
    public init(
        ip: String?,
        country: String?,
        location: ClientRequestLocation?
    ) {
        self.ip = ip
        self.country = country
        self.location = location
    }
}

/**
 * Latitude & longitude of the client's aprox location.
 */
public class ClientRequestLocation: Codable {
    public var lat: Double?
    public var lon: Double?
    public init(
        lat: Double?,
        lon: Double?
    ) {
        self.lat = lat
        self.lon = lon
    }
}
