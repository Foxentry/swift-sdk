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

public class Error500RequestProjectNoData: Codable {
    public var group: Error500RequestProjectNoDataGroup?
    public var type: Error500RequestProjectNoDataType?
    public var subtype: Error500RequestProjectNoDataSubtype?
    public var severity: Error500RequestProjectNoDataSeverity?
    public var relatedTo: [String?]?
    public var description: Error500RequestProjectNoDataDescription?
    public init(
        group: Error500RequestProjectNoDataGroup?,
        type: Error500RequestProjectNoDataType?,
        subtype: Error500RequestProjectNoDataSubtype?,
        severity: Error500RequestProjectNoDataSeverity?,
        relatedTo: [String?]?,
        description: Error500RequestProjectNoDataDescription?
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
public enum Error500RequestProjectNoDataGroup: String, Codable, UnknownCaseRepresentable {
    case INTERNAL
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error500RequestProjectNoDataType: String, Codable, UnknownCaseRepresentable {
    case PROJECT
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error500RequestProjectNoDataSubtype: String, Codable, UnknownCaseRepresentable {
    case NO_DATA
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error500RequestProjectNoDataSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error500RequestProjectNoDataDescription: String, Codable, UnknownCaseRepresentable {
    case FAILED_TO_FETCH_PROJECT_DATA_NEEDED_FOR_PROCESSING_YOUR_REQUEST_PLEASE_CONTACT_US_IF_THE_ERROR_PERSISTS_ = "Failed to fetch project data needed for processing your request. Please contact us if the error persists."
    // Fallback case
    case unknown
}
