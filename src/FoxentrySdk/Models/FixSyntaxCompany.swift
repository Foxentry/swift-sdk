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

public class FixSyntaxCompany: Codable {
    public var group: FixSyntaxCompanyGroup?
    public var type: FixSyntaxCompanyType?
    public var subtype: FixSyntaxCompanySubtype?
    public var data: FixData?
    public init(
        group: FixSyntaxCompanyGroup?,
        type: FixSyntaxCompanyType?,
        subtype: FixSyntaxCompanySubtype?,
        data: FixData?
    ) {
        self.group = group
        self.type = type
        self.subtype = subtype
        self.data = data
    }
}

/**
 * Group of fix.
 */
public enum FixSyntaxCompanyGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of fix.
 */
public enum FixSyntaxCompanyType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART_ADDED

    case VALUE_PART_CHANGED

    case VALUE_PART_REMOVED
    // Fallback case
    case unknown
}

/**
 * Subtype of fix.
 */
public enum FixSyntaxCompanySubtype: String, Codable, UnknownCaseRepresentable {
    case LEGAL_FORM
    // Fallback case
    case unknown
}
