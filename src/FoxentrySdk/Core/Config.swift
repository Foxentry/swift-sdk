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

public struct Config {
    public let url: String
    public let token: String?
    public let username: String?
    public let password: String?

    public init(
        url: String = "https://api.foxentry.com",
        token: String? = nil,
        username: String? = nil,
        password: String? = nil
    ) {
        self.url = url
        self.token = token
        self.username = username
        self.password = password
    }
}
