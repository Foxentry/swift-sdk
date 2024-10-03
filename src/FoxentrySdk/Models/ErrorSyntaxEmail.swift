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

public class ErrorSyntaxEmail: Codable {
    public var group: ErrorSyntaxEmailGroup?
    public var type: ErrorSyntaxEmailType?
    public var subtype: ErrorSyntaxEmailSubtype?
    public var severity: ErrorSyntaxEmailSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorSyntaxEmailDescription?
    public init(
        group: ErrorSyntaxEmailGroup?,
        type: ErrorSyntaxEmailType?,
        subtype: ErrorSyntaxEmailSubtype?,
        severity: ErrorSyntaxEmailSeverity?,
        relatedTo: [String?]?,
        description: ErrorSyntaxEmailDescription?
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
public enum ErrorSyntaxEmailGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorSyntaxEmailType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART

    case VALUE_PART_EXTRA

    case VALUE_PART_MISSING

    case VALUE_PART_POSITION
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorSyntaxEmailSubtype: String, Codable, UnknownCaseRepresentable {
    case DOMAIN

    case AT_SIGN

    case TLD
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorSyntaxEmailSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorSyntaxEmailDescription: String, Codable, UnknownCaseRepresentable {
    case THE_DOMAIN_CONTAINS_INVALID_SYNTAX_ = "The domain contains invalid syntax."

    case VALUE_CONTAINS_DUPLICATED_SIGN_ = "Value contains duplicated \'@\' sign."

    case VALUE_DOES_NOT_CONTAIN_SIGN_ = "Value does not contain \'@\' sign."

    case VALUE_IS_MISSING_THE_TOP_LEVEL_DOMAIN_ = "Value is missing the top level domain."

    case THE_TLD_PART_OF_THE_VALUE_IS_PLACED_IN_THE_WRONG_POSITION_ = "The TLD part of the value is placed in the wrong position."
    // Fallback case
    case unknown
}
