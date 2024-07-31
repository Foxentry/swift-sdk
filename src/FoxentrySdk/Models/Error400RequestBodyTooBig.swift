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

public class Error400RequestBodyTooBig: Codable {
    public var group: Error400RequestBodyTooBigGroup?
    public var type: Error400RequestBodyTooBigType?
    public var subtype: Error400RequestBodyTooBigSubtype?
    public var severity: Error400RequestBodyTooBigSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestBodyTooBigDescription?
    public init(
        group: Error400RequestBodyTooBigGroup?,
        type: Error400RequestBodyTooBigType?,
        subtype: Error400RequestBodyTooBigSubtype?,
        severity: Error400RequestBodyTooBigSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestBodyTooBigDescription?
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
public enum Error400RequestBodyTooBigGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestBodyTooBigType: String, Codable, UnknownCaseRepresentable {
    case BODY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestBodyTooBigSubtype: String, Codable, UnknownCaseRepresentable {
    case TOO_BIG
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestBodyTooBigSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestBodyTooBigDescription: String, Codable, UnknownCaseRepresentable {
    case YOUR_REQUEST_LENGTH_IS_BIGGER_THAN_ALLOWED_PLEASE_CONTACT_US_IF_YOU_THINK_THIS_IS_A_MISTAKE_ = "Your request length is bigger than allowed. Please contact us if you think this is a mistake."
    // Fallback case
    case unknown
}
