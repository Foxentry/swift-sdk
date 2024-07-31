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

public class ErrorValueGlobal: Codable {
    public var group: ErrorValueGlobalGroup?
    public var type: ErrorValueGlobalType?
    public var subtype: ErrorValueGlobalSubtype?
    public var severity: ErrorValueGlobalSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorValueGlobalDescription?
    public init(
        group: ErrorValueGlobalGroup?,
        type: ErrorValueGlobalType?,
        subtype: ErrorValueGlobalSubtype?,
        severity: ErrorValueGlobalSeverity?,
        relatedTo: [String?]?,
        description: ErrorValueGlobalDescription?
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
public enum ErrorValueGlobalGroup: String, Codable, UnknownCaseRepresentable {
    case VALUE
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorValueGlobalType: String, Codable, UnknownCaseRepresentable {
    case EMPTY

    case INCORRECT_ORDER

    case INVALID

    case INVALID_COMBINATION

    case NOT_ALLOWED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorValueGlobalSubtype: String, Codable, UnknownCaseRepresentable {
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorValueGlobalSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorValueGlobalDescription: String, Codable, UnknownCaseRepresentable {
    case VALUE_IS_EMPTY_ = "Value is empty."

    case VALUE_CONTAINS_PARTS_IN_INCORRECT_ORDER_ = "Value contains parts in incorrect order."

    case VALUE_IS_NOT_VALID_ = "Value is not valid."

    case THE_COMBINATION_OF_VALUES_LISTED_IN_RELATED_TO_SECTION_IS_NOT_VALID_ = "The Combination of values listed in relatedTo section is not valid."

    case CONTEXT_WORDS_ARE_NOT_ALLOWED_ = "Context words are not allowed."
    // Fallback case
    case unknown
}
