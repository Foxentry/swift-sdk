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

public class Error500InternalDatabaseNotAvailable: Codable {
    public var group: Error500InternalDatabaseNotAvailableGroup?
    public var type: Error500InternalDatabaseNotAvailableType?
    public var subtype: Error500InternalDatabaseNotAvailableSubtype?
    public var severity: String?
    public var relatedTo: [String?]?
    public var description: Error500InternalDatabaseNotAvailableDescription?
    public init(
        group: Error500InternalDatabaseNotAvailableGroup?,
        type: Error500InternalDatabaseNotAvailableType?,
        subtype: Error500InternalDatabaseNotAvailableSubtype?,
        severity: String?,
        relatedTo: [String?]?,
        description: Error500InternalDatabaseNotAvailableDescription?
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
public enum Error500InternalDatabaseNotAvailableGroup: String, Codable, UnknownCaseRepresentable {
    case INTERNAL
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error500InternalDatabaseNotAvailableType: String, Codable, UnknownCaseRepresentable {
    case DATABASE
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error500InternalDatabaseNotAvailableSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_AVAILABLE
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error500InternalDatabaseNotAvailableDescription: String, Codable, UnknownCaseRepresentable {
    case INTERNAL_DATASTORE_IS_NOT_AVAILABLE_AT_THE_MOMENT_NO_OPERATION_ON_THIS_DATASTORE_IS_POSSIBLE_ = "Internal datastore is not available at the moment. No operation on this datastore is possible."
    // Fallback case
    case unknown
}
