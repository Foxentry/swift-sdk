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

public class Error404RequestEndpointNotFound: Codable {
    public var group: Error404RequestEndpointNotFoundGroup?
    public var type: Error404RequestEndpointNotFoundType?
    public var subtype: Error404RequestEndpointNotFoundSubtype?
    public var severity: Error404RequestEndpointNotFoundSeverity?
    public var relatedTo: [String?]?
    public var description: Error404RequestEndpointNotFoundDescription?
    public init(
        group: Error404RequestEndpointNotFoundGroup?,
        type: Error404RequestEndpointNotFoundType?,
        subtype: Error404RequestEndpointNotFoundSubtype?,
        severity: Error404RequestEndpointNotFoundSeverity?,
        relatedTo: [String?]?,
        description: Error404RequestEndpointNotFoundDescription?
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
public enum Error404RequestEndpointNotFoundGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error404RequestEndpointNotFoundType: String, Codable, UnknownCaseRepresentable {
    case ENDPOINT
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error404RequestEndpointNotFoundSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_FOUND
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error404RequestEndpointNotFoundSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error404RequestEndpointNotFoundDescription: String, Codable, UnknownCaseRepresentable {
    case ENDPOINT_NOT_FOUND_PLEASE_CHECK_FOXENTRY_DEV_FOR_THE_SUPPORTED_ENDPOINTS_ = "Endpoint not found. Please check Foxentry.dev for the supported endpoints."
    // Fallback case
    case unknown
}
