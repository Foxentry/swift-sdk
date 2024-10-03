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

public class ErrorSyntaxCompany: Codable {
    public var group: ErrorSyntaxCompanyGroup?
    public var type: ErrorSyntaxCompanyType?
    public var subtype: ErrorSyntaxCompanySubtype?
    public var severity: ErrorSyntaxCompanySeverity?
    public var relatedTo: [String?]?
    public var description: ErrorSyntaxCompanyDescription?
    public init(
        group: ErrorSyntaxCompanyGroup?,
        type: ErrorSyntaxCompanyType?,
        subtype: ErrorSyntaxCompanySubtype?,
        severity: ErrorSyntaxCompanySeverity?,
        relatedTo: [String?]?,
        description: ErrorSyntaxCompanyDescription?
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
public enum ErrorSyntaxCompanyGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum ErrorSyntaxCompanyType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART_EXTRA

    case VALUE_PART_MISSING
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum ErrorSyntaxCompanySubtype: String, Codable, UnknownCaseRepresentable {
    case LEGAL_FORM
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum ErrorSyntaxCompanySeverity: String, Codable, UnknownCaseRepresentable {
    case INFO = "info"

    case WARNING = "warning"

    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum ErrorSyntaxCompanyDescription: String, Codable, UnknownCaseRepresentable {
    case VALUE_CONTAINS_DUPLICATED_LEGAL_FORM_ = "Value contains duplicated legal form."

    case COMPANY_NAME_IS_MISSING_THE_LEGAL_FORM_ = "Company name is missing the legal form."
    // Fallback case
    case unknown
}
