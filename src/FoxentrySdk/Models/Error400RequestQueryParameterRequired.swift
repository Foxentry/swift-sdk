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

public class Error400RequestQueryParameterRequired: Codable {
    public var group: Error400RequestQueryParameterRequiredGroup?
    public var type: Error400RequestQueryParameterRequiredType?
    public var subtype: Error400RequestQueryParameterRequiredSubtype?
    public var severity: Error400RequestQueryParameterRequiredSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestQueryParameterRequiredDescription?
    public init(
        group: Error400RequestQueryParameterRequiredGroup?,
        type: Error400RequestQueryParameterRequiredType?,
        subtype: Error400RequestQueryParameterRequiredSubtype?,
        severity: Error400RequestQueryParameterRequiredSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestQueryParameterRequiredDescription?
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
public enum Error400RequestQueryParameterRequiredGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestQueryParameterRequiredType: String, Codable, UnknownCaseRepresentable {
    case QUERY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestQueryParameterRequiredSubtype: String, Codable, UnknownCaseRepresentable {
    case PARAMETERS_REQUIRED
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestQueryParameterRequiredSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestQueryParameterRequiredDescription: String, Codable, UnknownCaseRepresentable {
    case AT_LEAST_ONE_OF_LISTED_PARAMETERS_IS_REQUIRED_ = "At least one of listed parameters is required."
    // Fallback case
    case unknown
}
