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

struct HttpClientRequest {
    enum Method: String {
        case get = "GET"
        case post = "POST"
        case put = "PUT"
        case delete = "DELETE"
    }

    let method: Method
    let url: String
    let auth: HttpAuthentication?
    let headers: [String: String?]
    let urlParams: [String: Any]
    let jsonBody: (any Codable)?

    init(
        method: Method,
        url: String,
        auth: HttpAuthentication?,
        headers: [String: String?] = [:],
        urlParams: [String: Any] = [:],
        jsonBody: (any Codable)? = nil
    ) {
        self.method = method
        self.url = url
        self.auth = auth
        self.headers = headers
        self.urlParams = urlParams
        self.jsonBody = jsonBody
    }
}
