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

public class ErrorSyntaxName: Codable {
    public var group: ErrorSyntaxNameGroup?
    public var type: ErrorSyntaxNameType?
    public var subtype: ErrorSyntaxNameSubtype?
    public var severity: ErrorSyntaxNameSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorSyntaxNameDescription?
    public init(
        group: ErrorSyntaxNameGroup?,
        type: ErrorSyntaxNameType?,
        subtype: ErrorSyntaxNameSubtype?,
        severity: ErrorSyntaxNameSeverity?,
        relatedTo: [String?]?,
        description: ErrorSyntaxNameDescription?
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
public enum ErrorSyntaxNameGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorSyntaxNameType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART_MISSING

    case VALUE_PART_POSITION
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorSyntaxNameSubtype: String, Codable, UnknownCaseRepresentable {
    case NAME

    case SURNAME

    case DEGREE
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorSyntaxNameSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorSyntaxNameDescription: String, Codable, UnknownCaseRepresentable {
    case VALUE_IS_MISSING_THE_NAME_PART_ = "Value is missing the name part."

    case VALUE_IS_MISSING_THE_SURNAME_PART_ = "Value is missing the surname part."

    case THE_DEGREE_PART_OF_THE_VALUE_IS_PLACED_IN_THE_WRONG_POSITION_ = "The DEGREE part of the value is placed in the wrong position."
    // Fallback case
    case unknown
}
