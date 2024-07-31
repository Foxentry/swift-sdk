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

/**
 * Data that has been changed
 */
public class FixData: Codable {
    public var typeFrom: String?
    public var type: String?
    public var valueFrom: String?
    public var value: String?
    public init(
        typeFrom: String?,
        type: String?,
        valueFrom: String?,
        value: String?
    ) {
        self.typeFrom = typeFrom
        self.type = type
        self.valueFrom = valueFrom
        self.value = value
    }
}
