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

public struct JsonDecodeError: LocalizedError {
    let originalError: DecodingError
    let jsonResponse: String
    let message: String

    init(originalError: DecodingError, jsonResponse: String) {
        self.originalError = originalError
        self.jsonResponse = jsonResponse

        switch originalError {
        case .dataCorrupted:
            message = "\(originalError.errorDescription!). Original API response: \(jsonResponse)"
        case let .keyNotFound(key, context):
            message = "API Parsing Error: (keyNotFound) \(key.stringValue) was not found, \(context.debugDescription). Original API response: \(jsonResponse)"
        case let .typeMismatch(type, context):
            message = "API Parsing Error: (typeMismatch) \(type) was expected, \(context.debugDescription) Path to property: \(context.codingPath.map { key in key.stringValue }.joined(separator: "->")). Original API response: \(jsonResponse)"
        case let .valueNotFound(type, context):
            message = "API Parsing Error: (valueNotFound) no value was found for \(type), \(context.debugDescription) Path to property: \(context.codingPath.map { key in key.stringValue }.joined(separator: "->")). Original API response: \(jsonResponse)"
        default:
            message = originalError.errorDescription!
        }
    }

    public var errorDescription: String? {
        message
    }
}

class Utils {
    public static func joinUrl(baseUrl: String, endpoint: String) -> String {
        let base = URL(string: baseUrl)!
        let url = URL(string: endpoint, relativeTo: base)!

        return url.absoluteString
    }

    public static func decodeJson<T: Decodable>(data: Data) throws -> T {
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch let error as DecodingError {
            throw JsonDecodeError(originalError: error, jsonResponse: String(data: data, encoding: .utf8)!)
        }
    }
}
