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

public class Error400RequestBodyNoRequest: Codable {
    public var group: Error400RequestBodyNoRequestGroup?
    public var type: Error400RequestBodyNoRequestType?
    public var subtype: Error400RequestBodyNoRequestSubtype?
    public var severity: Error400RequestBodyNoRequestSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestBodyNoRequestDescription?
    public init(
        group: Error400RequestBodyNoRequestGroup?,
        type: Error400RequestBodyNoRequestType?,
        subtype: Error400RequestBodyNoRequestSubtype?,
        severity: Error400RequestBodyNoRequestSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestBodyNoRequestDescription?
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
public enum Error400RequestBodyNoRequestGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestBodyNoRequestType: String, Codable, UnknownCaseRepresentable {
    case BODY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestBodyNoRequestSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_JSON
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestBodyNoRequestSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestBodyNoRequestDescription: String, Codable, UnknownCaseRepresentable {
    case YOUR_API_CALL_BODY_DOES_NOT_CONTAIN_ANY_REQUESTS_ = "Your API call body does not contain any requests."
    // Fallback case
    case unknown
}
