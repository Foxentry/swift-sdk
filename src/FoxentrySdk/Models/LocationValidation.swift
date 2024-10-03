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
public class LocationValidation: Codable {
    public var status: Int
    public var request: LocationValidationRequestModel
    public var response: LocationValidationResponse
    public var errors: [LocationValidationErrors?]
    public init(
        status: Int,
        request: LocationValidationRequestModel,
        response: LocationValidationResponse,
        errors: [LocationValidationErrors?]
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class LocationValidationRequestModel: GlobalRequest {
    public var query: LocationValidationRequestModelQuery?
    public var options: LocationValidationRequestModelOptions?
    public var client: ClientRequest?
    public init(
        query: LocationValidationRequestModelQuery?,
        options: LocationValidationRequestModelOptions?,
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
        query = try container.decodeIfPresent(LocationValidationRequestModelQuery.self, forKey: .query)
        options = try container.decodeIfPresent(LocationValidationRequestModelOptions.self, forKey: .options)
        client = try container.decodeIfPresent(ClientRequest.self, forKey: .client)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case query
        case options
        case client
    }
}

public class LocationValidationRequestModelOptions: LocationRequestOptions {
    public var acceptPostOfficeAsCity: Bool?
    public init(
        acceptPostOfficeAsCity: Bool?,
        dataScope: LocationRequestOptionsDataScope?,
        dataSource: [String?]?,
        resultsLimit: Int?,
        zipFormat: Bool?,
        cityFormat: LocationRequestOptionsCityFormat?,
        countryFormat: LocationRequestOptionsCountryFormat?,
        filterMode: LocationRequestOptionsFilterMode?
    ) {
        self.acceptPostOfficeAsCity = acceptPostOfficeAsCity
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
        acceptPostOfficeAsCity = try container.decodeIfPresent(Bool.self, forKey: .acceptPostOfficeAsCity)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case acceptPostOfficeAsCity
    }
}

public class LocationValidationRequestModelQuery: Codable {
    public var street: String?
    public var streetWithNumber: String?
    public var numberFull: String?
    public var numberPart1: String?
    public var numberPart1Number: String?
    public var numberPart1Letter: String?
    public var numberPart2: String?
    public var numberPart2Number: String?
    public var numberPart2Letter: String?
    public var city: String?
    public var zip: String?
    public var full: String?
    public var country: String?
    public init(
        street: String?,
        streetWithNumber: String?,
        numberFull: String?,
        numberPart1: String?,
        numberPart1Number: String?,
        numberPart1Letter: String?,
        numberPart2: String?,
        numberPart2Number: String?,
        numberPart2Letter: String?,
        city: String?,
        zip: String?,
        full: String?,
        country: String?
    ) {
        self.street = street
        self.streetWithNumber = streetWithNumber
        self.numberFull = numberFull
        self.numberPart1 = numberPart1
        self.numberPart1Number = numberPart1Number
        self.numberPart1Letter = numberPart1Letter
        self.numberPart2 = numberPart2
        self.numberPart2Number = numberPart2Number
        self.numberPart2Letter = numberPart2Letter
        self.city = city
        self.zip = zip
        self.full = full
        self.country = country
    }

    enum CodingKeys: String, CodingKey {
        case street
        case streetWithNumber
        case numberFull = "number.full"
        case numberPart1 = "number.part1"
        case numberPart1Number = "number.part1Number"
        case numberPart1Letter = "number.part1Letter"
        case numberPart2 = "number.part2"
        case numberPart2Number = "number.part2Number"
        case numberPart2Letter = "number.part2Letter"
        case city
        case zip
        case full
        case country
    }
}

public class LocationValidationErrors: Codable {
    public init(
    ) {}
}
