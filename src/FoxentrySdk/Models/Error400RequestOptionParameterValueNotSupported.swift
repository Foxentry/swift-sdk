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

public class Error400RequestOptionParameterValueNotSupported: Codable {
    public var group: Error400RequestOptionParameterValueNotSupportedGroup?
    public var type: Error400RequestOptionParameterValueNotSupportedType?
    public var subtype: Error400RequestOptionParameterValueNotSupportedSubtype?
    public var severity: Error400RequestOptionParameterValueNotSupportedSeverity?
    public var relatedTo: [String?]?
    public var description: Error400RequestOptionParameterValueNotSupportedDescription?
    public init(
        group: Error400RequestOptionParameterValueNotSupportedGroup?,
        type: Error400RequestOptionParameterValueNotSupportedType?,
        subtype: Error400RequestOptionParameterValueNotSupportedSubtype?,
        severity: Error400RequestOptionParameterValueNotSupportedSeverity?,
        relatedTo: [String?]?,
        description: Error400RequestOptionParameterValueNotSupportedDescription?
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
public enum Error400RequestOptionParameterValueNotSupportedGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error400RequestOptionParameterValueNotSupportedType: String, Codable, UnknownCaseRepresentable {
    case OPTIONS
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error400RequestOptionParameterValueNotSupportedSubtype: String, Codable, UnknownCaseRepresentable {
    case PARAMETER_VALUE_NOT_SUPPORTED
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error400RequestOptionParameterValueNotSupportedSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error400RequestOptionParameterValueNotSupportedDescription: String, Codable, UnknownCaseRepresentable {
    case VALUE_IN_PARAMATER_IS_NOT_VALID_PLEASE_CHECK_FOXENTRY_DEV_FOR_MORE_INFORMATION_ = "Value in paramater is not valid. Please check Foxentry.dev for more information."
    // Fallback case
    case unknown
}
