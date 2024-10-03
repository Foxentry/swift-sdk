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

public class FixSyntaxEmail: Codable {
    public var group: FixSyntaxEmailGroup?
    public var type: FixSyntaxEmailType?
    public var subtype: FixSyntaxEmailSubtype?
    public var data: FixData?
    public init(
        group: FixSyntaxEmailGroup?,
        type: FixSyntaxEmailType?,
        subtype: FixSyntaxEmailSubtype?,
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
public enum FixSyntaxEmailGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of fix.
 */
public enum FixSyntaxEmailType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART_ADDED

    case VALUE_PART_CHANGED

    case VALUE_PART_REMOVED
    // Fallback case
    case unknown
}

/**
 * Subtype of fix.
 */
public enum FixSyntaxEmailSubtype: String, Codable, UnknownCaseRepresentable {
    case AT_SIGN

    case DOMAIN_TLD

    case DOMAIN
    // Fallback case
    case unknown
}
