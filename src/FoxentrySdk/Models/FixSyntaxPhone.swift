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

public class FixSyntaxPhone: Codable {
    public var group: FixSyntaxPhoneGroup?
    public var type: FixSyntaxPhoneType?
    public var subtype: FixSyntaxPhoneSubtype?
    public var data: FixData?
    public init(
        group: FixSyntaxPhoneGroup?,
        type: FixSyntaxPhoneType?,
        subtype: FixSyntaxPhoneSubtype?,
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
public enum FixSyntaxPhoneGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of fix.
 */
public enum FixSyntaxPhoneType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART_ADDED

    case VALUE_PART_CHANGED

    case VALUE_PART_REMOVED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum FixSyntaxPhoneSubtype: String, Codable, UnknownCaseRepresentable {
    case PLUS_SIGN

    case PREFIX
    // Fallback case
    case unknown
}
