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

public class FixSyntaxLocation: Codable {
    public var group: FixSyntaxLocationGroup?
    public var type: FixSyntaxLocationType?
    public var subtype: FixSyntaxLocationSubtype?
    public var data: FixData?
    public init(
        group: FixSyntaxLocationGroup?,
        type: FixSyntaxLocationType?,
        subtype: FixSyntaxLocationSubtype?,
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
public enum FixSyntaxLocationGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of fix.
 */
public enum FixSyntaxLocationType: String, Codable, UnknownCaseRepresentable {
    case VALUE_PART_ADDED
    // Fallback case
    case unknown
}

/**
 * Subtype of fix.
 */
public enum FixSyntaxLocationSubtype: String, Codable, UnknownCaseRepresentable {
    case NUMBER

    case NUMBER_PART
    // Fallback case
    case unknown
}
