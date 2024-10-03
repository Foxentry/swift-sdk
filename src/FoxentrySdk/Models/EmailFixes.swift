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
 * List of all changes applied to the query data in order to get the corrected result.
 */
public class EmailFixes: Codable {
    public var type: String?
    public var subtype: String?
    public var data: EmailFixesData?
    public init(
        type: String?,
        subtype: String?,
        data: EmailFixesData?
    ) {
        self.type = type
        self.subtype = subtype
        self.data = data
    }
}

public class EmailFixesData: Codable {
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
