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

public class GlobalRequest: Codable {
    public var endpoint: String
    public var code: String
    public var customId: String?
    public init(
        endpoint: String,
        code: String,
        customId: String?
    ) {
        self.endpoint = endpoint
        self.code = code
        self.customId = customId
    }
}
