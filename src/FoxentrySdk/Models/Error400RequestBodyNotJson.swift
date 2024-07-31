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

public class Error400RequestBodyNotJson: Codable {
    public var group: Error400RequestBodyNotJsonGroup?
    public var type: Error400RequestBodyNotJsonType?
    public var subtype: Error400RequestBodyNotJsonSubtype?
    public var severity: Error400RequestBodyNotJsonSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestBodyNotJsonDescription?
    public init(
        group: Error400RequestBodyNotJsonGroup?,
        type: Error400RequestBodyNotJsonType?,
        subtype: Error400RequestBodyNotJsonSubtype?,
        severity: Error400RequestBodyNotJsonSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestBodyNotJsonDescription?
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
public enum Error400RequestBodyNotJsonGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestBodyNotJsonType: String, Codable, UnknownCaseRepresentable {
    case BODY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestBodyNotJsonSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_JSON
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestBodyNotJsonSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestBodyNotJsonDescription: String, Codable, UnknownCaseRepresentable {
    case CANNOT_PROCESS_THE_REQUEST_BECAUSE_THE_JSON_IS_NOT_VALID_PLEASE_CHECK_FOXENTRY_DEV_FOR_MORE_INFORMATION_ = "Cannot process the request because the JSON is not valid. Please check Foxentry.dev for more information."
    // Fallback case
    case unknown
}
