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

public class ErrorSyntaxPhone: Codable {
    public var group: ErrorSyntaxPhoneGroup?
    public var type: ErrorSyntaxPhoneType?
    public var subtype: ErrorSyntaxPhoneSubtype?
    public var severity: ErrorSyntaxPhoneSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorSyntaxPhoneDescription?
    public init(
        group: ErrorSyntaxPhoneGroup?,
        type: ErrorSyntaxPhoneType?,
        subtype: ErrorSyntaxPhoneSubtype?,
        severity: ErrorSyntaxPhoneSeverity?,
        relatedTo: [String?]?,
        description: ErrorSyntaxPhoneDescription?
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
public enum ErrorSyntaxPhoneGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorSyntaxPhoneType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART_EXTRA

    case VALUE_PART_MISSING
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorSyntaxPhoneSubtype: String, Codable, UnknownCaseRepresentable {
    case PLUS_SIGN

    case NUMBER

    case PREFIX
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorSyntaxPhoneSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorSyntaxPhoneDescription: String, Codable, UnknownCaseRepresentable {
    case VALUE_CONTAINS_DUPLICATED_SIGN_ = "Value contains duplicated \'+\' sign."

    case VALUE_IS_MISSING_THE_NUMBER_ = "Value is missing the number."

    case VALUE_IS_MISSING_THE_SIGN_ = "Value is missing the \'+\' sign."

    case VALUE_IS_MISSING_THE_PREFIX_ = "Value is missing the prefix."
    // Fallback case
    case unknown
}
