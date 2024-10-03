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

public class Error500Timeout: Codable {
    public var group: Error500TimeoutGroup?
    public var type: Error500TimeoutType?
    public var subtype: String?
    public var severity: Error500TimeoutSeverity?
    public var relatedTo: [String?]?
    public var description: Error500TimeoutDescription?
    public init(
        group: Error500TimeoutGroup?,
        type: Error500TimeoutType?,
        subtype: String?,
        severity: Error500TimeoutSeverity?,
        relatedTo: [String?]?,
        description: Error500TimeoutDescription?
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
public enum Error500TimeoutGroup: String, Codable, UnknownCaseRepresentable {
    case INTERNAL
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error500TimeoutType: String, Codable, UnknownCaseRepresentable {
    case TIMEOUT
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error500TimeoutSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error500TimeoutDescription: String, Codable, UnknownCaseRepresentable {
    case API_TIMEOUT_IN_EFFECT_YOUR_REQUEST_TOOK_TOO_MUCH_TIME_TO_PROCESS_ = "API timeout in effect. Your request took too much time to process."
    // Fallback case
    case unknown
}
