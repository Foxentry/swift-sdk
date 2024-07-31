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

public class Error429RequestBillingServiceLimit: Codable {
    public var group: Error429RequestBillingServiceLimitGroup?
    public var type: Error429RequestBillingServiceLimitType?
    public var subtype: Error429RequestBillingServiceLimitSubtype?
    public var severity: Error429RequestBillingServiceLimitSeverity?
    public var relatedTo: [String?]?
    public var description: Error429RequestBillingServiceLimitDescription?
    public init(
        group: Error429RequestBillingServiceLimitGroup?,
        type: Error429RequestBillingServiceLimitType?,
        subtype: Error429RequestBillingServiceLimitSubtype?,
        severity: Error429RequestBillingServiceLimitSeverity?,
        relatedTo: [String?]?,
        description: Error429RequestBillingServiceLimitDescription?
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
public enum Error429RequestBillingServiceLimitGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error429RequestBillingServiceLimitType: String, Codable, UnknownCaseRepresentable {
    case BILLING
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error429RequestBillingServiceLimitSubtype: String, Codable, UnknownCaseRepresentable {
    case SERVICE_LIMIT_REACHED
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error429RequestBillingServiceLimitSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error429RequestBillingServiceLimitDescription: String, Codable, UnknownCaseRepresentable {
    case REQUESTED_API_VERSION_IS_NOT_AVAILABLE_PLEASE_CHECK_FOXENTRY_DEV_FOR_THE_SUPPORTED_VERSIONS_ = "Requested API version is not available. Please check Foxentry.dev for the supported versions."
    // Fallback case
    case unknown
}
