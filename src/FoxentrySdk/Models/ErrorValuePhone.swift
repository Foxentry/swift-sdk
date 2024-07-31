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

public class ErrorValuePhone: Codable {
    public var group: ErrorValuePhoneGroup?
    public var type: ErrorValuePhoneType?
    public var subtype: ErrorValuePhoneSubtype?
    public var severity: ErrorValuePhoneSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorValuePhoneDescription?
    public init(
        group: ErrorValuePhoneGroup?,
        type: ErrorValuePhoneType?,
        subtype: ErrorValuePhoneSubtype?,
        severity: ErrorValuePhoneSeverity?,
        relatedTo: [String?]?,
        description: ErrorValuePhoneDescription?
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
public enum ErrorValuePhoneGroup: String, Codable, UnknownCaseRepresentable {
    case VALUE
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorValuePhoneType: String, Codable, UnknownCaseRepresentable {
    case INVALID

    case NOT_ALLOWED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorValuePhoneSubtype: String, Codable, UnknownCaseRepresentable {
    case PREFIX
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorValuePhoneSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorValuePhoneDescription: String, Codable, UnknownCaseRepresentable {
    case PREFIX_IS_INVALID_ = "Prefix is invalid."

    case THIS_PREFIX_IS_NOT_ALLOWED_CHECK_THE_ALLOWED_PREFIXES_OPTION_IN_THE_REQUEST_ = "This prefix is not allowed. Check the \'allowedPrefixes\' option in the request."
    // Fallback case
    case unknown
}
