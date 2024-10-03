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

public class Error429RequestRateLimitCreditPerDay: Codable {
    public var group: Error429RequestRateLimitCreditPerDayGroup?
    public var type: Error429RequestRateLimitCreditPerDayType?
    public var subtype: Error429RequestRateLimitCreditPerDaySubtype?
    public var severity: Error429RequestRateLimitCreditPerDaySeverity?
    public var relatedTo: [String?]?
    public var description: Error429RequestRateLimitCreditPerDayDescription?
    public init(
        group: Error429RequestRateLimitCreditPerDayGroup?,
        type: Error429RequestRateLimitCreditPerDayType?,
        subtype: Error429RequestRateLimitCreditPerDaySubtype?,
        severity: Error429RequestRateLimitCreditPerDaySeverity?,
        relatedTo: [String?]?,
        description: Error429RequestRateLimitCreditPerDayDescription?
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
public enum Error429RequestRateLimitCreditPerDayGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error429RequestRateLimitCreditPerDayType: String, Codable, UnknownCaseRepresentable {
    case RATE_LIMIT
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error429RequestRateLimitCreditPerDaySubtype: String, Codable, UnknownCaseRepresentable {
    case CREDIT_PER_DAY
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error429RequestRateLimitCreditPerDaySeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error429RequestRateLimitCreditPerDayDescription: String, Codable, UnknownCaseRepresentable {
    case THE_MAXIMUM_DAILY_LIMIT_HAS_BEEN_REACHED_ADJUST_THE_SETTINGS_IN_THE_PROJECT_OR_WAIT_UNTIL_THE_LIMIT_IS_RESET_ = "The maximum daily limit has been reached. Adjust the settings in the project or wait until the limit is reset."
    // Fallback case
    case unknown
}
