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

public class LocationData: Codable {
    public var country: String!
    public var region: String?
    public var district: String?
    public var cityDistrict: String?
    public var cityDistrictSpecial: String?
    public var cityPart: String?
    public var cityAdministrative: String?
    public var cadastralArea: String?
    public var ids: LocationDataIds
    public var street: String!
    public var number: LocationNumber
    public var streetWithNumber: String!
    public var city: String!
    public var zip: String!
    public var postOffice: LocationDataPostOffice?
    public var geometry: DataGeometry?
    public var full: String!
    public init(
        country: String!,
        region: String?,
        district: String?,
        cityDistrict: String?,
        cityDistrictSpecial: String?,
        cityPart: String?,
        cityAdministrative: String?,
        cadastralArea: String?,
        ids: LocationDataIds,
        street: String!,
        number: LocationNumber,
        streetWithNumber: String!,
        city: String!,
        zip: String!,
        postOffice: LocationDataPostOffice?,
        geometry: DataGeometry?,
        full: String!
    ) {
        self.country = country
        self.region = region
        self.district = district
        self.cityDistrict = cityDistrict
        self.cityDistrictSpecial = cityDistrictSpecial
        self.cityPart = cityPart
        self.cityAdministrative = cityAdministrative
        self.cadastralArea = cadastralArea
        self.ids = ids
        self.street = street
        self.number = number
        self.streetWithNumber = streetWithNumber
        self.city = city
        self.zip = zip
        self.postOffice = postOffice
        self.geometry = geometry
        self.full = full
    }
}

/**
 * Address internal & external ids.
 */
public class LocationDataIds: Codable {
    public var `internal`: String?
    public var external: String?
    public var region: String?
    public var discrict: String?
    public var cityDistrictSpecial: String?
    public var cityDistrict: String?
    public var cityPart: String?
    public var cadastralArea: String?
    public var city: String?
    public var street: String?
    public init(
        internal: String?,
        external: String?,
        region: String?,
        discrict: String?,
        cityDistrictSpecial: String?,
        cityDistrict: String?,
        cityPart: String?,
        cadastralArea: String?,
        city: String?,
        street: String?
    ) {
        self.internal = `internal`
        self.external = external
        self.region = region
        self.discrict = discrict
        self.cityDistrictSpecial = cityDistrictSpecial
        self.cityDistrict = cityDistrict
        self.cityPart = cityPart
        self.cadastralArea = cadastralArea
        self.city = city
        self.street = street
    }
}

/**
 * In what post office jurisdiction the address falls under.
 */
public class LocationDataPostOffice: Codable {
    public var name: String!
    public init(
        name: String!
    ) {
        self.name = name
    }
}
