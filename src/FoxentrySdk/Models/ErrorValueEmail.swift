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

public class ErrorValueEmail: Codable {
    public var group: ErrorValueEmailGroup?
    public var type: ErrorValueEmailType?
    public var subtype: ErrorValueEmailSubtype?
    public var severity: ErrorValueEmailSeverity?
    public var relatedTo: [String?]?
    public var description: ErrorValueEmailDescription?
    public init(
        group: ErrorValueEmailGroup?,
        type: ErrorValueEmailType?,
        subtype: ErrorValueEmailSubtype?,
        severity: ErrorValueEmailSeverity?,
        relatedTo: [String?]?,
        description: ErrorValueEmailDescription?
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
public enum ErrorValueEmailGroup: String, Codable, UnknownCaseRepresentable {
    case VALUE
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorValueEmailType: String, Codable, UnknownCaseRepresentable {
    case INVALID

    case NOT_ALLOWED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorValueEmailSubtype: String, Codable, UnknownCaseRepresentable {
    case DOMAIN

    case DOMAIN_DNS

    case DISPOSABLE

    case FREEMAIL
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorValueEmailSeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorValueEmailDescription: String, Codable, UnknownCaseRepresentable {
    case DOMAIN_NAME_IS_INVALID_ = "Domain name is invalid."

    case DOMAIN_DOES_NOT_HAVE_DNS_RECORDS_SET_PROPERLY_FOR_RECEIVING_EMAILS_ = "Domain does not have DNS records set properly for receiving emails."

    case DISPOSABLE_EMAILS_ARE_NOT_ALLOWED_ = "Disposable emails are not allowed."

    case FREEMAILS_ARE_NOT_ALLOWED_ = "Freemails are not allowed."
    // Fallback case
    case unknown
}
