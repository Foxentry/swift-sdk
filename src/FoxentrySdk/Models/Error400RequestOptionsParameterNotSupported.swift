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

public class Error400RequestOptionsParameterNotSupported: Codable {
    public var group: Error400RequestOptionsParameterNotSupportedGroup?
    public var type: Error400RequestOptionsParameterNotSupportedType?
    public var subtype: Error400RequestOptionsParameterNotSupportedSubtype?
    public var severity: Error400RequestOptionsParameterNotSupportedSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestOptionsParameterNotSupportedDescription?
    public init(
        group: Error400RequestOptionsParameterNotSupportedGroup?,
        type: Error400RequestOptionsParameterNotSupportedType?,
        subtype: Error400RequestOptionsParameterNotSupportedSubtype?,
        severity: Error400RequestOptionsParameterNotSupportedSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestOptionsParameterNotSupportedDescription?
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
public enum Error400RequestOptionsParameterNotSupportedGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestOptionsParameterNotSupportedType: String, Codable, UnknownCaseRepresentable {
    case OPTIONS
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestOptionsParameterNotSupportedSubtype: String, Codable, UnknownCaseRepresentable {
    case PARAMETER_NOT_SUPPORTED
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestOptionsParameterNotSupportedSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestOptionsParameterNotSupportedDescription: String, Codable, UnknownCaseRepresentable {
    case OPTIONS_PARAMETER_IS_NOT_SUPPORTED_FOR_THIS_ENDPOINT_ = "Options parameter is not supported for this endpoint."
    // Fallback case
    case unknown
}
