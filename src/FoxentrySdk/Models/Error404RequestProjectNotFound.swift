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

public class Error404RequestProjectNotFound: Codable {
    public var group: Error404RequestProjectNotFoundGroup?
    public var type: Error404RequestProjectNotFoundType?
    public var subtype: Error404RequestProjectNotFoundSubtype?
    public var severity: Error404RequestProjectNotFoundSeverity?
    public var relatedTo: [String?]?
    public var description: Error404RequestProjectNotFoundDescription?
    public init(
        group: Error404RequestProjectNotFoundGroup?,
        type: Error404RequestProjectNotFoundType?,
        subtype: Error404RequestProjectNotFoundSubtype?,
        severity: Error404RequestProjectNotFoundSeverity?,
        relatedTo: [String?]?,
        description: Error404RequestProjectNotFoundDescription?
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
public enum Error404RequestProjectNotFoundGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error404RequestProjectNotFoundType: String, Codable, UnknownCaseRepresentable {
    case PROJECT
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error404RequestProjectNotFoundSubtype: String, Codable, UnknownCaseRepresentable {
    case NOT_FOUND
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error404RequestProjectNotFoundSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error404RequestProjectNotFoundDescription: String, Codable, UnknownCaseRepresentable {
    case THE_PROJECT_DOES_NOT_EXIST_PLEASE_CHECK_THE_AVAILABLE_PROJECTS_AT_APP_FOXENTRY_COM_OR_CONTACT_THE_SUPPORT_ = "The project does not exist. Please check the available projects at app.foxentry.com or contact the support."
    // Fallback case
    case unknown
}
