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

public class Error403RequestAuthToken: Codable {
    public var group: Error403RequestAuthTokenGroup?
    public var type: Error403RequestAuthTokenType?
    public var subtype: Error403RequestAuthTokenSubtype?
    public var severity: Error403RequestAuthTokenSeverity?
    public var relatedTo: [String?]?
    public var description: Error403RequestAuthTokenDescription?
    public init(
        group: Error403RequestAuthTokenGroup?,
        type: Error403RequestAuthTokenType?,
        subtype: Error403RequestAuthTokenSubtype?,
        severity: Error403RequestAuthTokenSeverity?,
        relatedTo: [String?]?,
        description: Error403RequestAuthTokenDescription?
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
public enum Error403RequestAuthTokenGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error403RequestAuthTokenType: String, Codable, UnknownCaseRepresentable {
    case AUTH
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error403RequestAuthTokenSubtype: String, Codable, UnknownCaseRepresentable {
    case TOKEN
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error403RequestAuthTokenSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error403RequestAuthTokenDescription: String, Codable, UnknownCaseRepresentable {
    case PROVIDED_ACCESS_TOKEN_IS_NOT_VALID_PLEASE_CHECK_THE_PROJECT_SETTINGS_AT_APP_FOXENTRY_COM_ = "Provided access token is not valid. Please check the project settings at app.foxentry.com."
    // Fallback case
    case unknown
}
