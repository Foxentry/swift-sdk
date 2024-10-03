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

public class FixValueLocation: Codable {
    public var group: FixValueLocationGroup?
    public var type: FixValueLocationType?
    public var subtype: FixValueLocationSubtype?
    public var data: FixData?
    public init(
        group: FixValueLocationGroup?,
        type: FixValueLocationType?,
        subtype: FixValueLocationSubtype?,
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
public enum FixValueLocationGroup: String, Codable, UnknownCaseRepresentable {
    case VALUE
    // Fallback case
    case unknown
}

/**
 * Type of fix.
 */
public enum FixValueLocationType: String, Codable, UnknownCaseRepresentable {
    case PART_CHANGED
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum FixValueLocationSubtype: String, Codable, UnknownCaseRepresentable {
    case CITY

    case NUMBER

    case STREET

    case ZIP
    // Fallback case
    case unknown
}
