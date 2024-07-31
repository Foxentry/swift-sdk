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

public class Error429RequestRateLimitTooManyRequests: Codable {
    public var group: Error429RequestRateLimitTooManyRequestsGroup?
    public var type: Error429RequestRateLimitTooManyRequestsType?
    public var subtype: Error429RequestRateLimitTooManyRequestsSubtype?
    public var severity: Error429RequestRateLimitTooManyRequestsSeverity?
    public var relatedTo: [String?]?
    public var description: Error429RequestRateLimitTooManyRequestsDescription?
    public init(
        group: Error429RequestRateLimitTooManyRequestsGroup?,
        type: Error429RequestRateLimitTooManyRequestsType?,
        subtype: Error429RequestRateLimitTooManyRequestsSubtype?,
        severity: Error429RequestRateLimitTooManyRequestsSeverity?,
        relatedTo: [String?]?,
        description: Error429RequestRateLimitTooManyRequestsDescription?
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
public enum Error429RequestRateLimitTooManyRequestsGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error429RequestRateLimitTooManyRequestsType: String, Codable, UnknownCaseRepresentable {
    case RATE_LIMIT
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error429RequestRateLimitTooManyRequestsSubtype: String, Codable, UnknownCaseRepresentable {
    case TOO_MANY_REQUESTS
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error429RequestRateLimitTooManyRequestsSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error429RequestRateLimitTooManyRequestsDescription: String, Codable, UnknownCaseRepresentable {
    case THE_MAXIMUM_ALLOWED_REQUEST_RATE_LIMIT_HAS_BEEN_REACHED_CHECK_FOXENTRY_DEV_FOR_MORE_INFORMATION_OR_CONTACT_THE_SUPPORT_ = "The maximum allowed request rate limit has been reached. Check Foxentry.dev for more information or contact the support."
    // Fallback case
    case unknown
}
