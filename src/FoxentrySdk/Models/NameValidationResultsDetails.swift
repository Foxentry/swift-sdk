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

public class NameValidationResultsDetails: Codable {
    public var type: NameValidationResultsDetailsType
    public var value: String
    public var gender: NameValidationResultsDetailsGender?
    public var vocative: String?
    public var nameDays: [NameValidationResultsDetailsNameDays?]!
    public init(
        type: NameValidationResultsDetailsType,
        value: String,
        gender: NameValidationResultsDetailsGender?,
        vocative: String?,
        nameDays: [NameValidationResultsDetailsNameDays?]!
    ) {
        self.type = type
        self.value = value
        self.gender = gender
        self.vocative = vocative
        self.nameDays = nameDays
    }
}

/**
 * Type of detail.
 */
public enum NameValidationResultsDetailsType: String, Codable, UnknownCaseRepresentable {
    case NAME = "name"

    case SURNAME = "surname"

    case NAME_SURNAME = "nameSurname"
    // Fallback case
    case unknown
}

/**
 * Gender of name. 0 for unspecified, 1 for men, 2 for women
 */
public enum NameValidationResultsDetailsGender: Int, Codable, UnknownCaseRepresentable {
    case _0 = 0

    case _1 = 1

    case _2 = 2
    // Fallback case
    case unknown
}

public class NameValidationResultsDetailsNameDays: Codable {
    public var country: String
    public var month: Double
    public var day: Double
    public init(
        country: String,
        month: Double,
        day: Double
    ) {
        self.country = country
        self.month = month
        self.day = day
    }
}
