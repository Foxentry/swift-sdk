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

public class Error403RequestNotAllowedIp: Codable {
    public var group: Error403RequestNotAllowedIpGroup?
    public var type: Error403RequestNotAllowedIpType?
    public var subtype: Error403RequestNotAllowedIpSubtype?
    public var severity: Error403RequestNotAllowedIpSeverity?
    public var relatedTo: [String?]?
    public var description: Error403RequestNotAllowedIpDescription?
    public init(
        group: Error403RequestNotAllowedIpGroup?,
        type: Error403RequestNotAllowedIpType?,
        subtype: Error403RequestNotAllowedIpSubtype?,
        severity: Error403RequestNotAllowedIpSeverity?,
        relatedTo: [String?]?,
        description: Error403RequestNotAllowedIpDescription?
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
public enum Error403RequestNotAllowedIpGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error403RequestNotAllowedIpType: String, Codable, UnknownCaseRepresentable {
    case NOT_ALLOWED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error403RequestNotAllowedIpSubtype: String, Codable, UnknownCaseRepresentable {
    case IP
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error403RequestNotAllowedIpSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error403RequestNotAllowedIpDescription: String, Codable, UnknownCaseRepresentable {
    case THE_API_KEY_HAS_IP_LIMITS_SET_AND_YOUR_IP_ADDRESS_IS_NOT_ALLOWED_CHANGE_THE_PROJECT_SETTINGS_AT_APP_FOXENTRY_COM_ = "The API key has IP limits set and your IP address is not allowed. Change the project settings at app.foxentry.com."
    // Fallback case
    case unknown
}
