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

public class ErrorFormatGlobal: Codable {
    public var group: ErrorFormatGlobalGroup?
    public var type: ErrorFormatGlobalType?
    public var subtype: ErrorFormatGlobalSubtype?
    public var severity: ErrorFormatGlobalSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorFormatGlobalDescription?
    public init(
        group: ErrorFormatGlobalGroup?,
        type: ErrorFormatGlobalType?,
        subtype: ErrorFormatGlobalSubtype?,
        severity: ErrorFormatGlobalSeverity?,
        relatedTo: [String?]?,
        description: ErrorFormatGlobalDescription?
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
public enum ErrorFormatGlobalGroup: String, Codable, UnknownCaseRepresentable {
    case FORMAT
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorFormatGlobalType: String, Codable, UnknownCaseRepresentable {
    case CHARACTERS
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorFormatGlobalSubtype: String, Codable, UnknownCaseRepresentable {
    case CASE_SENSITIVITY

    case DIACRITICS

    case SPECIAL

    case WHITESPACES
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorFormatGlobalSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorFormatGlobalDescription: String, Codable, UnknownCaseRepresentable {
    case INVALID_CASE_SENSITIVITY_SPECIFIC_RULES_ARE_APPLIED_TO_THE_USE_OF_UPPER_AND_LOWER_CASE_LETTERS_ = "Invalid case sensitivity. Specific rules are applied to the use of upper and lower case letters."

    case INVALID_DIACRITICS_SPECIFIC_RULES_ARE_APPLIED_TO_THE_USE_OF_DIACRITICS_ = "Invalid diacritics. Specific rules are applied to the use of diacritics."

    case INVALID_USE_OF_SPACES_SPECIFIC_RULES_ARE_APPLIED_TO_THE_USE_OF_SPACES_ = "Invalid use of spaces. Specific rules are applied to the use of spaces."
    // Fallback case
    case unknown
}
