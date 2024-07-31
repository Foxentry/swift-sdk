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

class HttpRequest {
    enum Constants {
        static let headerContentType = "Content-Type"
        static let contentTypeJson = "application/json; charset=UTF-8"
    }

    private let session: URLSession
    private let request: HttpClientRequest

    init(
        request: HttpClientRequest,
        session: URLSession
    ) {
        self.request = request
        self.session = session
    }

    func execute() async throws -> (Data, HTTPURLResponse) {
        guard let url = URL(string: request.url) else {
            throw HttpError.invalidUrl
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method.rawValue

        for (header, value) in request.headers {
            urlRequest.setValue(value, forHTTPHeaderField: header)
        }

        if let username = request.auth?.username, let password = request.auth?.password {
            let loginString = "\(username):\(password)"
            if let loginData = loginString.data(using: .utf8) {
                let base64LoginString = loginData.base64EncodedString()
                urlRequest.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
            }
        }

        if let bearerToken = request.auth?.bearerToken {
            urlRequest.setValue("Bearer \(bearerToken)", forHTTPHeaderField: "Authorization")
        }

        for header in request.headers {
            urlRequest.setValue(header.value, forHTTPHeaderField: header.key)
        }

        if let jsonBody = request.jsonBody {
            let jsonData = try JSONEncoder().encode(jsonBody)
            urlRequest.httpBody = jsonData
        }

        let (data, response) = try await session.data(for: urlRequest)
        return (data, response as! HTTPURLResponse)
    }
}
