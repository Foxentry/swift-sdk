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

public class Error403RequestNotAllowedDomain: Codable {
    public var group: Error403RequestNotAllowedDomainGroup?
    public var type: Error403RequestNotAllowedDomainType?
    public var subtype: Error403RequestNotAllowedDomainSubtype?
    public var severity: Error403RequestNotAllowedDomainSeverity?
    public var relatedTo: [String?]?
    public var description: Error403RequestNotAllowedDomainDescription?
    public init(
        group: Error403RequestNotAllowedDomainGroup?,
        type: Error403RequestNotAllowedDomainType?,
        subtype: Error403RequestNotAllowedDomainSubtype?,
        severity: Error403RequestNotAllowedDomainSeverity?,
        relatedTo: [String?]?,
        description: Error403RequestNotAllowedDomainDescription?
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
public enum Error403RequestNotAllowedDomainGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error403RequestNotAllowedDomainType: String, Codable, UnknownCaseRepresentable {
    case NOT_ALLOWED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error403RequestNotAllowedDomainSubtype: String, Codable, UnknownCaseRepresentable {
    case DOMAIN
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error403RequestNotAllowedDomainSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error403RequestNotAllowedDomainDescription: String, Codable, UnknownCaseRepresentable {
    case WEBSITE_DOMAIN_IS_NOT_ALLOWED_IN_THE_PROJECT_SETTINGS_ = "Website domain is not allowed in the project settings."
    // Fallback case
    case unknown
}
