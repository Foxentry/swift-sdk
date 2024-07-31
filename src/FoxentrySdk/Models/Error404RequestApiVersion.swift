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

public class Error404RequestApiVersion: Codable {
    public var group: Error404RequestApiVersionGroup?
    public var type: Error404RequestApiVersionType?
    public var subtype: String?
    public var severity: Error404RequestApiVersionSeverity?
    public var relatedTo: [String?]?
    public var description: Error404RequestApiVersionDescription?
    public init(
        group: Error404RequestApiVersionGroup?,
        type: Error404RequestApiVersionType?,
        subtype: String?,
        severity: Error404RequestApiVersionSeverity?,
        relatedTo: [String?]?,
        description: Error404RequestApiVersionDescription?
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
public enum Error404RequestApiVersionGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error404RequestApiVersionType: String, Codable, UnknownCaseRepresentable {
    case API_VERSION
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error404RequestApiVersionSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error404RequestApiVersionDescription: String, Codable, UnknownCaseRepresentable {
    case REQUESTED_API_VERSION_IS_NOT_AVAILABLE_PLEASE_CHECK_FOXENTRY_DEV_FOR_THE_SUPPORTED_VERSIONS_ = "Requested API version is not available. Please check Foxentry.dev for the supported versions."
    // Fallback case
    case unknown
}
