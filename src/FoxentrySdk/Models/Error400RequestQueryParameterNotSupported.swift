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

public class Error400RequestQueryParameterNotSupported: Codable {
    public var group: Error400RequestQueryParameterNotSupportedGroup?
    public var type: Error400RequestQueryParameterNotSupportedType?
    public var subtype: Error400RequestQueryParameterNotSupportedSubtype?
    public var severity: Error400RequestQueryParameterNotSupportedSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestQueryParameterNotSupportedDescription?
    public init(
        group: Error400RequestQueryParameterNotSupportedGroup?,
        type: Error400RequestQueryParameterNotSupportedType?,
        subtype: Error400RequestQueryParameterNotSupportedSubtype?,
        severity: Error400RequestQueryParameterNotSupportedSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestQueryParameterNotSupportedDescription?
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
public enum Error400RequestQueryParameterNotSupportedGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestQueryParameterNotSupportedType: String, Codable, UnknownCaseRepresentable {
    case QUERY
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestQueryParameterNotSupportedSubtype: String, Codable, UnknownCaseRepresentable {
    case PARAMETERS_NOT_SUPPORTED
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestQueryParameterNotSupportedSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestQueryParameterNotSupportedDescription: String, Codable, UnknownCaseRepresentable {
    case QUERY_PARAMETER_IS_NOT_SUPPORTED_FOR_THIS_ENDPOINT_ = "Query parameter is not supported for this endpoint."
    // Fallback case
    case unknown
}
