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

public class FixFormatGlobal: Codable {
    public var group: FixFormatGlobalGroup?
    public var type: FixFormatGlobalType?
    public var subtype: FixFormatGlobalSubtype?
    public var data: FixData?
    public init(
        group: FixFormatGlobalGroup?,
        type: FixFormatGlobalType?,
        subtype: FixFormatGlobalSubtype?,
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
public enum FixFormatGlobalGroup: String, Codable, UnknownCaseRepresentable {
    case FORMAT

    case VALUE
    // Fallback case
    case unknown
}

/**
 * Type of fix.
 */
public enum FixFormatGlobalType: String, Codable, UnknownCaseRepresentable {
    case CHANGED
    // Fallback case
    case unknown
}

/**
 * Subtype of fix.
 */
public enum FixFormatGlobalSubtype: String, Codable, UnknownCaseRepresentable {
    case CASE_SENSITIVITY

    case DIACRITICS

    case WHITESPACES

    case TYPO
    // Fallback case
    case unknown
}
