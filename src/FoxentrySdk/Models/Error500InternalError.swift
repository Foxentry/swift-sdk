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

public class Error500InternalError: Codable {
    public var group: Error500InternalErrorGroup?
    public var type: Error500InternalErrorType?
    public var subtype: String?
    public var severity: Error500InternalErrorSeverity?
    public var relatedTo: [String?]?
    public var description: Error500InternalErrorDescription?
    public init(
        group: Error500InternalErrorGroup?,
        type: Error500InternalErrorType?,
        subtype: String?,
        severity: Error500InternalErrorSeverity?,
        relatedTo: [String?]?,
        description: Error500InternalErrorDescription?
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
public enum Error500InternalErrorGroup: String, Codable, UnknownCaseRepresentable {
    case INTERNAL
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error500InternalErrorType: String, Codable, UnknownCaseRepresentable {
    case ERROR
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error500InternalErrorSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error500InternalErrorDescription: String, Codable, UnknownCaseRepresentable {
    case FAILED_TO_PROCESS_YOUR_REQUEST_PLEASE_TRY_AGAIN_LATER_OR_CONTACT_US_ = "Failed to process your request. Please try again later or contact us."
    // Fallback case
    case unknown
}
