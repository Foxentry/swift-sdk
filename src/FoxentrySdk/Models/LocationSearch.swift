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
public class LocationSearch: Codable {
    public var status: Int
    public var request: LocationSearchRequestModel
    public var response: LocationSearchResponse?
    public var errors: [LocationSearchErrors?]?
    public init(
        status: Int,
        request: LocationSearchRequestModel,
        response: LocationSearchResponse?,
        errors: [LocationSearchErrors?]?
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class LocationSearchRequestModel: GlobalRequest {
    public var query: LocationSearchRequestModelQuery?
    public var options: LocationRequestOptionsSearch?
    public var client: ClientRequest?
    public init(
        query: LocationSearchRequestModelQuery?,
        options: LocationRequestOptionsSearch?,
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
        query = try container.decodeIfPresent(LocationSearchRequestModelQuery.self, forKey: .query)
        options = try container.decodeIfPresent(LocationRequestOptionsSearch.self, forKey: .options)
        client = try container.decodeIfPresent(ClientRequest.self, forKey: .client)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case query
        case options
        case client
    }
}

public class LocationSearchRequestModelQuery: Codable {
    public var type: LocationSearchRequestModelQueryType?
    public var value: String?
    public var filter: LocationSearchRequestModelQueryFilter?
    public init(
        type: LocationSearchRequestModelQueryType?,
        value: String?,
        filter: LocationSearchRequestModelQueryFilter?
    ) {
        self.type = type
        self.value = value
        self.filter = filter
    }
}

/**
 * Type of search.
 */
public enum LocationSearchRequestModelQueryType: String, Codable, UnknownCaseRepresentable {
    case STREET = "street"

    case STREET_WITH_NUMBER = "streetWithNumber"

    case NUMBER_FULL = "number.full"

    case NUMBER_PART1 = "number.part1"

    case NUMBER_PART1NUMBER = "number.part1Number"

    case NUMBER_PART2 = "number.part2"

    case NUMBER_PART2NUMBER = "number.part2Number"

    case CITY = "city"

    case ZIP = "zip"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * Additional filter in order to specify the search results. You can for example set as a filter city of Prague, so the the search engine would look for the addresses only in Prague. Pay attention to the options, which determines how the filter should behave.
 */
public class LocationSearchRequestModelQueryFilter: Codable {
    public var street: String?
    public var streetWithNumber: String?
    public var numberFull: String?
    public var numberPart1: String?
    public var numberPart2: String?
    public var city: String?
    public var zip: String?
    public var country: String?
    public init(
        street: String?,
        streetWithNumber: String?,
        numberFull: String?,
        numberPart1: String?,
        numberPart2: String?,
        city: String?,
        zip: String?,
        country: String?
    ) {
        self.street = street
        self.streetWithNumber = streetWithNumber
        self.numberFull = numberFull
        self.numberPart1 = numberPart1
        self.numberPart2 = numberPart2
        self.city = city
        self.zip = zip
        self.country = country
    }

    enum CodingKeys: String, CodingKey {
        case street
        case streetWithNumber
        case numberFull = "number.full"
        case numberPart1 = "number.part1"
        case numberPart2 = "number.part2"
        case city
        case zip
        case country
    }
}

public class LocationSearchErrors: Codable {
    public init(
    ) {}
}
