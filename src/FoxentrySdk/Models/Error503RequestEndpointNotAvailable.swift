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

public class Error503RequestEndpointNotAvailable: Codable {
    public var group: Error503RequestEndpointNotAvailableGroup?
    public var type: Error503RequestEndpointNotAvailableType?
    public var subtype: Error503RequestEndpointNotAvailableSubtype?
    public var severity: Error503RequestEndpointNotAvailableSeverity?
    public var relatedTo: [String?]?
    public var description: Error503RequestEndpointNotAvailableDescription?
    public init(
        group: Error503RequestEndpointNotAvailableGroup?,
        type: Error503RequestEndpointNotAvailableType?,
        subtype: Error503RequestEndpointNotAvailableSubtype?,
        severity: Error503RequestEndpointNotAvailableSeverity?,
        relatedTo: [String?]?,
        description: Error503RequestEndpointNotAvailableDescription?
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
public enum Error503RequestEndpointNotAvailableGroup: String, Codable, UnknownCaseRepresentable {
    case INTERNAL
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error503RequestEndpointNotAvailableType: String, Codable, UnknownCaseRepresentable {
    case ENDPOINT
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error503RequestEndpointNotAvailableSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_AVAILABLE
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error503RequestEndpointNotAvailableSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error503RequestEndpointNotAvailableDescription: String, Codable, UnknownCaseRepresentable {
    case API_ENDPOINT_IS_TEMPORARY_UNAVAILABLE_PLEASE_CONTACT_US_AT_INFO_FOXENTRY_COM_IF_THE_ERROR_PERSISTS_ = "API endpoint is temporary unavailable. Please contact us at info@foxentry.com if the error persists."
    // Fallback case
    case unknown
}
