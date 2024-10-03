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

public class ErrorValueName: Codable {
    public var group: ErrorValueNameGroup?
    public var type: ErrorValueNameType?
    public var subtype: ErrorValueNameSubtype?
    public var severity: ErrorValueNameSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorValueNameDescription?
    public init(
        group: ErrorValueNameGroup?,
        type: ErrorValueNameType?,
        subtype: ErrorValueNameSubtype?,
        severity: ErrorValueNameSeverity?,
        relatedTo: [String?]?,
        description: ErrorValueNameDescription?
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
public enum ErrorValueNameGroup: String, Codable, UnknownCaseRepresentable {
    case VALUE
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorValueNameType: String, Codable, UnknownCaseRepresentable {
    case INVALID

    case NOT_ALLOWED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorValueNameSubtype: String, Codable, UnknownCaseRepresentable {
    case DEGREE

    case NAME

    case NAMESURNAME

    case SURNAME

    case CONTEXT
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorValueNameSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorValueNameDescription: String, Codable, UnknownCaseRepresentable {
    case DEGREE_VALUE_IS_INVALID_ = "Degree value is invalid."

    case NAME_HAS_NOT_BEEN_FOUND_IN_OUR_DATABASE_ = "Name has not been found in our database."

    case NAME_SURNAME_HAS_NOT_BEEN_FOUND_IN_OUR_DATABASE_ = "NameSurname has not been found in our database."

    case SURNAME_HAS_NOT_BEEN_FOUND_IN_OUR_DATABASE_ = "Surname has not been found in our database."

    case DEGREES_ARE_NOT_ALLOWED_ = "Degrees are not allowed."
    // Fallback case
    case unknown
}
