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

public class Error400RequestBodyEmpty: Codable {
    public var group: Error400RequestBodyEmptyGroup?
    public var type: Error400RequestBodyEmptyType?
    public var subtype: Error400RequestBodyEmptySubtype?
    public var severity: Error400RequestBodyEmptySeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestBodyEmptyDescription?
    public init(
        group: Error400RequestBodyEmptyGroup?,
        type: Error400RequestBodyEmptyType?,
        subtype: Error400RequestBodyEmptySubtype?,
        severity: Error400RequestBodyEmptySeverity?,
        relatedTo: [String?]?,
        description: Error400RequestBodyEmptyDescription?
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
public enum Error400RequestBodyEmptyGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestBodyEmptyType: String, Codable, UnknownCaseRepresentable {
    case BODY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestBodyEmptySubtype: String, Codable, UnknownCaseRepresentable {
    case EMPTY
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestBodyEmptySeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestBodyEmptyDescription: String, Codable, UnknownCaseRepresentable {
    case CANNOT_PROCESS_THE_REQUEST_BECAUSE_OF_THE_EMPTY_BODY_PLEASE_CHECK_FOXENTRY_DEV_FOR_MORE_INFORMATION_ = "Cannot process the request because of the empty body. Please check Foxentry.dev for more information."
    // Fallback case
    case unknown
}
