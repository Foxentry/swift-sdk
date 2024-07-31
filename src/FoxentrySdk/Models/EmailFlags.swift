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

public class EmailFlags: Codable {
    public var isCatchAllServer: Bool?
    public var isDisposableEmailLocation: Bool?
    public var isFreeMail: Bool?
    public init(
        isCatchAllServer: Bool?,
        isDisposableEmailLocation: Bool?,
        isFreeMail: Bool?
    ) {
        self.isCatchAllServer = isCatchAllServer
        self.isDisposableEmailLocation = isDisposableEmailLocation
        self.isFreeMail = isFreeMail
    }
}
