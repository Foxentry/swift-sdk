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
 * Address data from the official registry. Not validated by Foxentry.
 */
public class LocationOficial: Codable {
    public var data: LocationOficialData?
    public init(
        data: LocationOficialData?
    ) {
        self.data = data
    }
}

public class LocationOficialData: Codable {
    public var country: String?
    public var street: String?
    public var number: LocationNumber?
    public var streetWithNumber: String?
    public var city: String?
    public var zip: String?
    public var full: String?
    public init(
        country: String?,
        street: String?,
        number: LocationNumber?,
        streetWithNumber: String?,
        city: String?,
        zip: String?,
        full: String?
    ) {
        self.country = country
        self.street = street
        self.number = number
        self.streetWithNumber = streetWithNumber
        self.city = city
        self.zip = zip
        self.full = full
    }
}
