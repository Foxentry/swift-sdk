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

public class ErrorSyntaxLocation: Codable {
    public var group: ErrorSyntaxLocationGroup?
    public var type: ErrorSyntaxLocationType?
    public var subtype: ErrorSyntaxLocationSubtype?
    public var severity: ErrorSyntaxLocationSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorSyntaxLocationDescription?
    public init(
        group: ErrorSyntaxLocationGroup?,
        type: ErrorSyntaxLocationType?,
        subtype: ErrorSyntaxLocationSubtype?,
        severity: ErrorSyntaxLocationSeverity?,
        relatedTo: [String?]?,
        description: ErrorSyntaxLocationDescription?
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
public enum ErrorSyntaxLocationGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorSyntaxLocationType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART_MISSING
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorSyntaxLocationSubtype: String, Codable, UnknownCaseRepresentable {
    case CITY

    case NUMBER_PART

    case STREET

    case ZIP
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorSyntaxLocationSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorSyntaxLocationDescription: String, Codable, UnknownCaseRepresentable {
    case VALUE_IS_MISSING_THE_CITY_ = "Value is missing the city."

    case VALUE_IS_MISSING_THE_NUMBER_PART_ = "Value is missing the number part."

    case VALUE_IS_MISSING_THE_STREET_ = "Value is missing the street."

    case VALUE_IS_MISSING_THE_ZIP_ = "Value is missing the zip."

    case VALUE_IS_MISSING_SOME_PART_OF_THE_NUMBER_ = "Value is missing some part of the number."
    // Fallback case
    case unknown
}
