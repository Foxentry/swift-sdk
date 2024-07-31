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

public class FixSyntaxGlobal: Codable {
    public var group: FixSyntaxGlobalGroup?
    public var type: FixSyntaxGlobalType?
    public var subtype: FixSyntaxGlobalSubtype?
    public var data: FixData?
    public init(
        group: FixSyntaxGlobalGroup?,
        type: FixSyntaxGlobalType?,
        subtype: FixSyntaxGlobalSubtype?,
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
public enum FixSyntaxGlobalGroup: String, Codable, UnknownCaseRepresentable {
    case SYNTAX
    // Fallback case
    case unknown
}

/**
 * Type of fix.
 */
public enum FixSyntaxGlobalType: String, Codable, UnknownCaseRepresentable {
    case VALUE_CHANGED

    case VALUE_PART_CHANGED

    case VALUE_PART_REMOVED
    // Fallback case
    case unknown
}

/**
 * Subtype of fix.
 */
public enum FixSyntaxGlobalSubtype: String, Codable, UnknownCaseRepresentable {
    case CHARACTERS

    case WHITESPACES

    case CONTEXT

    case DUPLICITY
    // Fallback case
    case unknown
}
