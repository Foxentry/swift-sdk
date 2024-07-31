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

public class FixValueGlobal: Codable {
    public var group: FixValueGlobalGroup?
    public var type: FixValueGlobalType?
    public var subtype: FixValueGlobalSubtype?
    public var data: FixData?
    public init(
        group: FixValueGlobalGroup?,
        type: FixValueGlobalType?,
        subtype: FixValueGlobalSubtype?,
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
public enum FixValueGlobalGroup: String, Codable, UnknownCaseRepresentable {
    case VALUE
    // Fallback case
    case unknown
}

/**
 * Type of fix.
 */
public enum FixValueGlobalType: String, Codable, UnknownCaseRepresentable {
    case ADDED

    case CHANGED

    case PART_CHANGED

    case REMOVED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum FixValueGlobalSubtype: String, Codable, UnknownCaseRepresentable {
    case INTERNAL_RULE

    case TYPO
    // Fallback case
    case unknown
}
