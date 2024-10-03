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

public class Error405RequestNotAllowedMethod: Codable {
    public var group: Error405RequestNotAllowedMethodGroup?
    public var type: Error405RequestNotAllowedMethodType?
    public var subtype: Error405RequestNotAllowedMethodSubtype?
    public var severity: Error405RequestNotAllowedMethodSeverity?
    public var relatedTo: [String?]?
    public var description: Error405RequestNotAllowedMethodDescription?
    public init(
        group: Error405RequestNotAllowedMethodGroup?,
        type: Error405RequestNotAllowedMethodType?,
        subtype: Error405RequestNotAllowedMethodSubtype?,
        severity: Error405RequestNotAllowedMethodSeverity?,
        relatedTo: [String?]?,
        description: Error405RequestNotAllowedMethodDescription?
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
public enum Error405RequestNotAllowedMethodGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error405RequestNotAllowedMethodType: String, Codable, UnknownCaseRepresentable {
    case ENDPOINT
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error405RequestNotAllowedMethodSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_ALLOWED
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error405RequestNotAllowedMethodSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error405RequestNotAllowedMethodDescription: String, Codable, UnknownCaseRepresentable {
    case HTTP_METHOD_IS_NOT_ALLOWED_FOR_THIS_ENDPOINT_PLEASE_CHECK_FOXENTRY_DEV_FOR_MORE_INFORMATION_ = "HTTP method is not allowed for this endpoint. Please check Foxentry.dev for more information."
    // Fallback case
    case unknown
}
