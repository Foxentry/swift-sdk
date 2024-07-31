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

public class Error400RequestOptionsParameterCombination: Codable {
    public var group: Error400RequestOptionsParameterCombinationGroup?
    public var type: Error400RequestOptionsParameterCombinationType?
    public var subtype: Error400RequestOptionsParameterCombinationSubtype?
    public var severity: Error400RequestOptionsParameterCombinationSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestOptionsParameterCombinationDescription?
    public init(
        group: Error400RequestOptionsParameterCombinationGroup?,
        type: Error400RequestOptionsParameterCombinationType?,
        subtype: Error400RequestOptionsParameterCombinationSubtype?,
        severity: Error400RequestOptionsParameterCombinationSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestOptionsParameterCombinationDescription?
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
public enum Error400RequestOptionsParameterCombinationGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestOptionsParameterCombinationType: String, Codable, UnknownCaseRepresentable {
    case OPTIONS
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestOptionsParameterCombinationSubtype: String, Codable, UnknownCaseRepresentable {
    case PARAMETERS_COMBINATION
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestOptionsParameterCombinationSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestOptionsParameterCombinationDescription: String, Codable, UnknownCaseRepresentable {
    case COMBINATION_OF_OPTIONS_OR_THEIR_VALUES_IS_NOT_VALID_ = "Combination of options or their values is not valid."
    // Fallback case
    case unknown
}
