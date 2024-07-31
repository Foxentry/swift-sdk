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

public class Error500InternalDatabaseError: Codable {
    public var group: Error500InternalDatabaseErrorGroup?
    public var type: Error500InternalDatabaseErrorType?
    public var subtype: Error500InternalDatabaseErrorSubtype?
    public var severity: String?
    public var relatedTo: [String?]?
    public var description: Error500InternalDatabaseErrorDescription?
    public init(
        group: Error500InternalDatabaseErrorGroup?,
        type: Error500InternalDatabaseErrorType?,
        subtype: Error500InternalDatabaseErrorSubtype?,
        severity: String?,
        relatedTo: [String?]?,
        description: Error500InternalDatabaseErrorDescription?
    ) {
        self.group = group
        self.type = type
        self.subtype = subtype
        self.severity = severity
        self.relatedTo = relatedTo
        self.description = description
    }
}

/**
 * Group of error.
 */
public enum Error500InternalDatabaseErrorGroup: String, Codable, UnknownCaseRepresentable {
    case INTERNAL
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error500InternalDatabaseErrorType: String, Codable, UnknownCaseRepresentable {
    case DATABASE
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error500InternalDatabaseErrorSubtype: String, Codable, UnknownCaseRepresentable {
    case ERROR
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error500InternalDatabaseErrorDescription: String, Codable, UnknownCaseRepresentable {
    case AN_ERROR_HAS_OCCURED_DURING_THE_COMMUNICATION_WITH_OUR_DATABASE_PLEASE_CONTACT_US_IF_THE_ERROR_PERSISTS_ = "An error has occured during the communication with our database. Please contact us if the error persists."
    // Fallback case
    case unknown
}
