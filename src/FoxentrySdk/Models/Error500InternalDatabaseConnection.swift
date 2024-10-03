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

public class Error500InternalDatabaseConnection: Codable {
    public var group: Error500InternalDatabaseConnectionGroup?
    public var type: Error500InternalDatabaseConnectionType?
    public var subtype: Error500InternalDatabaseConnectionSubtype?
    public var severity: String?
    public var relatedTo: [String?]?
    public var description: Error500InternalDatabaseConnectionDescription?
    public init(
        group: Error500InternalDatabaseConnectionGroup?,
        type: Error500InternalDatabaseConnectionType?,
        subtype: Error500InternalDatabaseConnectionSubtype?,
        severity: String?,
        relatedTo: [String?]?,
        description: Error500InternalDatabaseConnectionDescription?
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
public enum Error500InternalDatabaseConnectionGroup: String, Codable, UnknownCaseRepresentable {
    case INTERNAL
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error500InternalDatabaseConnectionType: String, Codable, UnknownCaseRepresentable {
    case DATABASE
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error500InternalDatabaseConnectionSubtype: String, Codable, UnknownCaseRepresentable {
    case CONNECTION
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error500InternalDatabaseConnectionDescription: String, Codable, UnknownCaseRepresentable {
    case FAILED_TO_ESTABLISH_CONNECTION_WITH_THE_DATABASE_SERVER_PLEASE_CONTACT_US_IF_THE_ERROR_PERSISTS_ = "Failed to establish connection with the database server. Please contact us if the error persists."
    // Fallback case
    case unknown
}
