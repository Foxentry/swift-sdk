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

enum HttpError: LocalizedError {
    case invalidUrl
    case serializationFailed
    case deserializationFailed

    var errorDescription: String? {
        switch self {
        case .invalidUrl:
            "Invalid URL"
        case .serializationFailed:
            "Serialization failed"
        case .deserializationFailed:
            "Deserialization failed"
        }
    }
}
