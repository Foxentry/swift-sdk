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

public class EmailData: Codable {
    public var email: String?
    public var user: String?
    public var domain: String?
    public init(
        email: String?,
        user: String?,
        domain: String?
    ) {
        self.email = email
        self.user = user
        self.domain = domain
    }
}
