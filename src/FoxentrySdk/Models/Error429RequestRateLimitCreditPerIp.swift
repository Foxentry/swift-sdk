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

public class Error429RequestRateLimitCreditPerIp: Codable {
    public var group: Error429RequestRateLimitCreditPerIpGroup?
    public var type: Error429RequestRateLimitCreditPerIpType?
    public var subtype: Error429RequestRateLimitCreditPerIpSubtype?
    public var severity: Error429RequestRateLimitCreditPerIpSeverity?
    public var relatedTo: [String?]?
    public var description: Error429RequestRateLimitCreditPerIpDescription?
    public init(
        group: Error429RequestRateLimitCreditPerIpGroup?,
        type: Error429RequestRateLimitCreditPerIpType?,
        subtype: Error429RequestRateLimitCreditPerIpSubtype?,
        severity: Error429RequestRateLimitCreditPerIpSeverity?,
        relatedTo: [String?]?,
        description: Error429RequestRateLimitCreditPerIpDescription?
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
public enum Error429RequestRateLimitCreditPerIpGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error429RequestRateLimitCreditPerIpType: String, Codable, UnknownCaseRepresentable {
    case RATE_LIMIT
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error429RequestRateLimitCreditPerIpSubtype: String, Codable, UnknownCaseRepresentable {
    case CREDIT_PER_IP
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error429RequestRateLimitCreditPerIpSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error429RequestRateLimitCreditPerIpDescription: String, Codable, UnknownCaseRepresentable {
    case THE_MAXIMUM_DAILY_LIMIT_PER_IP_ADDRESS_HAS_BEEN_REACHED_ADJUST_THE_SETTINGS_IN_THE_PROJECT_OR_WAIT_UNTIL_THE_LIMIT_IS_RESET_ = "The maximum daily limit per IP address has been reached. Adjust the settings in the project or wait until the limit is reset."
    // Fallback case
    case unknown
}
