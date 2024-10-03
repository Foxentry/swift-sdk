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

public class Error400RequestQueryParameterCombination: Codable {
    public var group: Error400RequestQueryParameterCombinationGroup?
    public var type: Error400RequestQueryParameterCombinationType?
    public var subtype: Error400RequestQueryParameterCombinationSubtype?
    public var severity: Error400RequestQueryParameterCombinationSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestQueryParameterCombinationDescription?
    public init(
        group: Error400RequestQueryParameterCombinationGroup?,
        type: Error400RequestQueryParameterCombinationType?,
        subtype: Error400RequestQueryParameterCombinationSubtype?,
        severity: Error400RequestQueryParameterCombinationSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestQueryParameterCombinationDescription?
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
public enum Error400RequestQueryParameterCombinationGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestQueryParameterCombinationType: String, Codable, UnknownCaseRepresentable {
    case QUERY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestQueryParameterCombinationSubtype: String, Codable, UnknownCaseRepresentable {
    case PARAMETERS_COMBINATION
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestQueryParameterCombinationSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestQueryParameterCombinationDescription: String, Codable, UnknownCaseRepresentable {
    case IT_IS_NOT_POSSIBLE_TO_USE_THESE_PARAMETERS_AT_THE_SAME_TIME_IN_ONE_REQUEST_ = "It is not possible to use these parameters at the same time in one request."
    // Fallback case
    case unknown
}
