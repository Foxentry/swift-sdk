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

public class Error400RequestQueryParameterMissing: Codable {
    public var group: Error400RequestQueryParameterMissingGroup?
    public var type: Error400RequestQueryParameterMissingType?
    public var subtype: Error400RequestQueryParameterMissingSubtype?
    public var severity: Error400RequestQueryParameterMissingSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestQueryParameterMissingDescription?
    public init(
        group: Error400RequestQueryParameterMissingGroup?,
        type: Error400RequestQueryParameterMissingType?,
        subtype: Error400RequestQueryParameterMissingSubtype?,
        severity: Error400RequestQueryParameterMissingSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestQueryParameterMissingDescription?
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
public enum Error400RequestQueryParameterMissingGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestQueryParameterMissingType: String, Codable, UnknownCaseRepresentable {
    case QUERY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestQueryParameterMissingSubtype: String, Codable, UnknownCaseRepresentable {
    case PARAMETERS_MISSING
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestQueryParameterMissingSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestQueryParameterMissingDescription: String, Codable, UnknownCaseRepresentable {
    case QUERY_PARAMETER_IS_MISSING_PLEASE_CHECK_FOXENTRY_DEV_FOR_MORE_INFORMATION_ABOUT_HOW_TO_SET_UP_THE_QUERY_PROPERLY_ = "Query parameter is missing. Please check Foxentry.dev for more information about how to set up the query properly."
    // Fallback case
    case unknown
}
