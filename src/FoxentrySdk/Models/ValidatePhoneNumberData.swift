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

public class ValidatePhoneNumberData: Codable {
    public var country: ValidatePhoneNumberDataCountry
    public var prefix: String?
    public var number: String!
    public var numberWithPrefix: String!
    public var carrier: ValidatePhoneNumberDataCarrier
    public var format: ValidatePhoneNumberDataFormat
    public init(
        country: ValidatePhoneNumberDataCountry,
        prefix: String?,
        number: String!,
        numberWithPrefix: String!,
        carrier: ValidatePhoneNumberDataCarrier,
        format: ValidatePhoneNumberDataFormat
    ) {
        self.country = country
        self.prefix = prefix
        self.number = number
        self.numberWithPrefix = numberWithPrefix
        self.carrier = carrier
        self.format = format
    }
}

public class ValidatePhoneNumberDataCountry: Codable {
    public var code: String?
    public var prefix: String?
    public init(
        code: String?,
        prefix: String?
    ) {
        self.code = code
        self.prefix = prefix
    }
}

/**
 * Phone carrier information.
 */
public class ValidatePhoneNumberDataCarrier: Codable {
    public var name: String?
    public var type: ValidatePhoneNumberDataCarrierType?
    public init(
        name: String?,
        type: ValidatePhoneNumberDataCarrierType?
    ) {
        self.name = name
        self.type = type
    }
}

/**
 * Type of carrier.
 */
public enum ValidatePhoneNumberDataCarrierType: String, Codable, UnknownCaseRepresentable {
    case LANDLINE = "landline"

    case MOBILE = "mobile"

    case VOIP = "voip"
    // Fallback case
    case unknown
}

/**
 * Standardized international and local format.
 */
public class ValidatePhoneNumberDataFormat: Codable {
    public var national: String?
    public var nationalFormatted: String?
    public var international: String?
    public var internationalFormatted: String?
    public init(
        national: String?,
        nationalFormatted: String?,
        international: String?,
        internationalFormatted: String?
    ) {
        self.national = national
        self.nationalFormatted = nationalFormatted
        self.international = international
        self.internationalFormatted = internationalFormatted
    }
}
