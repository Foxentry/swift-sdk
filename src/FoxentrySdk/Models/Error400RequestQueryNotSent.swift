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

public class Error400RequestQueryNotSent: Codable {
    public var group: Error400RequestQueryNotSentGroup?
    public var type: Error400RequestQueryNotSentType?
    public var subtype: Error400RequestQueryNotSentSubtype?
    public var severity: Error400RequestQueryNotSentSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestQueryNotSentDescription?
    public init(
        group: Error400RequestQueryNotSentGroup?,
        type: Error400RequestQueryNotSentType?,
        subtype: Error400RequestQueryNotSentSubtype?,
        severity: Error400RequestQueryNotSentSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestQueryNotSentDescription?
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
public enum Error400RequestQueryNotSentGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestQueryNotSentType: String, Codable, UnknownCaseRepresentable {
    case QUERY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestQueryNotSentSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_SENT
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestQueryNotSentSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestQueryNotSentDescription: String, Codable, UnknownCaseRepresentable {
    case YOUR_REQUEST_QUERY_IS_EMPTY_PLEASE_CHECK_FOXENTRY_DEV_FOR_MORE_INFORMATION_ABOUT_HOW_TO_SET_UP_THE_QUERY_PROPERLY_ = "Your request query is empty. Please check Foxentry.dev for more information about how to set up the query properly."
    // Fallback case
    case unknown
}
