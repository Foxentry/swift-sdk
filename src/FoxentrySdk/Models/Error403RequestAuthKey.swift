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

public class Error403RequestAuthKey: Codable {
    public var group: Error403RequestAuthKeyGroup?
    public var type: Error403RequestAuthKeyType?
    public var subtype: Error403RequestAuthKeySubtype?
    public var severity: Error403RequestAuthKeySeverity?
    public var relatedTo: [String?]?
    public var description: Error403RequestAuthKeyDescription?
    public init(
        group: Error403RequestAuthKeyGroup?,
        type: Error403RequestAuthKeyType?,
        subtype: Error403RequestAuthKeySubtype?,
        severity: Error403RequestAuthKeySeverity?,
        relatedTo: [String?]?,
        description: Error403RequestAuthKeyDescription?
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
public enum Error403RequestAuthKeyGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error403RequestAuthKeyType: String, Codable, UnknownCaseRepresentable {
    case AUTH
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error403RequestAuthKeySubtype: String, Codable, UnknownCaseRepresentable {
    case KEY
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error403RequestAuthKeySeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error403RequestAuthKeyDescription: String, Codable, UnknownCaseRepresentable {
    case PROVIDED_API_KEY_IS_NOT_VALID_PLEASE_CHECK_THE_PROJECT_SETTINGS_AT_APP_FOXENTRY_COM_ = "Provided API key is not valid. Please check the project settings at app.foxentry.com."
    // Fallback case
    case unknown
}
