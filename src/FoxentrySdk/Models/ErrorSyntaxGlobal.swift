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

public class ErrorSyntaxGlobal: Codable {
    public var group: ErrorSyntaxGlobalGroup?
    public var type: ErrorSyntaxGlobalType?
    public var subtype: ErrorSyntaxGlobalSubtype?
    public var severity: ErrorSyntaxGlobalSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorSyntaxGlobalDescription?
    public init(
        group: ErrorSyntaxGlobalGroup?,
        type: ErrorSyntaxGlobalType?,
        subtype: ErrorSyntaxGlobalSubtype?,
        severity: ErrorSyntaxGlobalSeverity?,
        relatedTo: [String?]?,
        description: ErrorSyntaxGlobalDescription?
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
public enum ErrorSyntaxGlobalGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorSyntaxGlobalType: String, Codable, UnknownCaseRepresentable {
    case CHARACTERS

    case INVALID

    case UNABLE_TO_PROCESS

    case VALUE_LENGTH

    case VALUE_PART_EXTRA

    case VALUE_PART_MISSING
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorSyntaxGlobalSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_ALLOWED

    case WHITESPACES

    case TOO_LONG

    case TOO_SHORT

    case CONTEXT
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorSyntaxGlobalSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorSyntaxGlobalDescription: String, Codable, UnknownCaseRepresentable {
    case DISALLOWED_CHARACTERS_WERE_USED_IN_THE_VALUE_ = "Disallowed characters were used in the value."

    case VALUE_CONTAINS_INVALID_USE_OF_SPACES_ = "Value contains invalid use of spaces."

    case VALUE_HAS_INVALID_SYNTAX_ = "Value has invalid syntax."

    case CANNOT_BE_PROCESSED_DUE_TO_THE_INVALID_SYNTAX_ = "Cannot be processed due to the invalid syntax."

    case VALUE_IS_TOO_LONG_ = "Value is too long."

    case VALUE_IS_TOO_SHORT_ = "Value is too short."

    case VALUE_CONTAINS_UNNECCESSARY_CONTEXT_ = "Value contains unneccessary context."
    // Fallback case
    case unknown
}
