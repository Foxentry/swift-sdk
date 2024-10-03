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

public class LocationSearchRequest: Codable {
    public var customId: String?
    public var query: LocationSearchRequestQuery
    public var options: LocationRequestOptionsSearch?
    public var client: ClientRequest?
    public init(
        customId: String?,
        query: LocationSearchRequestQuery,
        options: LocationRequestOptionsSearch?,
        client: ClientRequest?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class LocationSearchRequestQuery: Codable {
    public var type: LocationSearchRequestQueryType
    public var value: String
    public var filter: LocationSearchRequestQueryFilter?
    public init(
        type: LocationSearchRequestQueryType,
        value: String,
        filter: LocationSearchRequestQueryFilter?
    ) {
        self.type = type
        self.value = value
        self.filter = filter
    }
}

/**
 * Type of search.
 */
public enum LocationSearchRequestQueryType: String, Codable, UnknownCaseRepresentable {
    case STREET = "street"

    case STREET_WITH_NUMBER = "streetWithNumber"

    case NUMBER_FULL = "number.full"

    case NUMBER_PART1 = "number.part1"

    case NUMBER_PART2 = "number.part2"

    case CITY = "city"

    case ZIP = "zip"

    case FULL = "full"
    // Fallback case
    case unknown
}

/**
 * Additional filter in order to specify the search results. You can for example set as a filter city of Prague, so the the search engine would look for the addresses only in Prague. Pay attention to the options, which determines how the filter should behave.
 */
public class LocationSearchRequestQueryFilter: Codable {
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
