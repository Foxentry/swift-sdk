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

public class Error401RequestAuth: Codable {
    public var group: Error401RequestAuthGroup?
    public var type: Error401RequestAuthType?
    public var subtype: String?
    public var severity: Error401RequestAuthSeverity?
    public var relatedTo: [String?]?
    public var description: Error401RequestAuthDescription?
    public init(
        group: Error401RequestAuthGroup?,
        type: Error401RequestAuthType?,
        subtype: String?,
        severity: Error401RequestAuthSeverity?,
        relatedTo: [String?]?,
        description: Error401RequestAuthDescription?
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
public enum Error401RequestAuthGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error401RequestAuthType: String, Codable, UnknownCaseRepresentable {
    case AUTH
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error401RequestAuthSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error401RequestAuthDescription: String, Codable, UnknownCaseRepresentable {
    case INVALID_AUTHORIZATION_CREDENTIALS_SENT_CHECK_FOXENTRY_DEV_FOR_MORE_INFORMATION_HOW_TO_SET_UP_THE_AUTH_PROPERLY_ = "Invalid authorization credentials sent. Check Foxentry.dev for more information how to set up the AUTH properly."
    // Fallback case
    case unknown
}
