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

public class NameService {
    private let config: Config
    private let session: URLSession

    public init(
        config: Config,
        session: URLSession = URLSession.shared
    ) {
        self.config = config
        self.session = session
    }

    /**
     * Validate name data
     * Foxentry allows you to check the validity and real existence of names and their combinations. At least one parameter is required in the query. You can either write down the name separately or use <b>nameSurname</b> as connected parameter. <br><br>Pay attention to the query options. Especially <b>validationDepth</b>, which determines how strict the validation should be based on your use case. For example you''d want minimal validationDepth for web forms since you usually don''t want to disturb the user too much with error messages and suggestions.   <br><br> Foxentry validator is able not only to evaluate the validity of the inputed information but it also can fix various typos, errors and missing data. Foxentry can also suggest more suitable alternatives to the data sent in query. Please pay attention to the <b>result</b>, <b>resultCorrected</b> and <b>suggestions</b> in the response.<br><br> Always check <b>result.proposal</b> in the response for a proposed solution by Foxentry how you should process the response in your form or application.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return NameValidation Successful response
     */
    public func nameValidation(
        requestBody: NameValidationRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> NameValidationResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/name/validate"),
            auth: HttpAuthentication(
                username: config.username,
                password: config.password,
                bearerToken: config.token
            ),
            headers: [
                HttpRequest.Constants.headerContentType: HttpRequest.Constants.contentTypeJson,
                "user-agent": "FoxentrySdk (Swift/2.0; FoxentryApiReference/2.0)",
                "foxentry-include-request-details": foxentryIncludeRequestDetails.map { String(describing: $0) },

            ],
            jsonBody: requestBody
        )
        let (data, response): (Data, HTTPURLResponse) = try await HttpRequest(
            request: request,
            session: session
        ).execute()

        let container = JSONDecoder()
        let result: NameValidationResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: NameValidation = try Utils.decodeJson(data: data)
            result = .nameValidation(decoded)
        case 400:
            let decoded = try container.decode(Error400.self, from: data)
            result = .error400(decoded)
        case 401:
            let decoded = try container.decode(Error401.self, from: data)
            result = .error401(decoded)
        case 402:
            let decoded = try container.decode(Error402.self, from: data)
            result = .error402(decoded)
        case 403:
            let decoded = try container.decode(Error403.self, from: data)
            result = .error403(decoded)
        case 404:
            let decoded = try container.decode(Error404.self, from: data)
            result = .error404(decoded)
        case 405:
            let decoded = try container.decode(Error405.self, from: data)
            result = .error405(decoded)
        case 429:
            let decoded = try container.decode(Error429.self, from: data)
            result = .error429(decoded)
        case 500:
            let decoded = try container.decode(Error500.self, from: data)
            result = .error500(decoded)
        case 503:
            let decoded = try container.decode(Error503.self, from: data)
            result = .error503(decoded)
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: [],
                    debugDescription: "Can't decode NameValidationResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return NameValidationResponseData(
            value: result,
            status: response.statusCode,
            headers: NameValidationResponseData.NameValidationHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct NameValidationResponseData {
        public let value: NameValidationResponseWrapper
        public let status: Int
        public let headers: NameValidationHeaders

        public struct NameValidationHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum NameValidationResponseWrapper: Codable {
        case nameValidation(NameValidation)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(nameValidation: NameValidation) {
            self = .nameValidation(nameValidation)
        }

        init(error400: Error400) {
            self = .error400(error400)
        }

        init(error401: Error401) {
            self = .error401(error401)
        }

        init(error402: Error402) {
            self = .error402(error402)
        }

        init(error403: Error403) {
            self = .error403(error403)
        }

        init(error404: Error404) {
            self = .error404(error404)
        }

        init(error405: Error405) {
            self = .error405(error405)
        }

        init(error429: Error429) {
            self = .error429(error429)
        }

        init(error500: Error500) {
            self = .error500(error500)
        }

        init(error503: Error503) {
            self = .error503(error503)
        }
    }
}

public class NameValidationRequestBody: Codable {
    public var request: NameValidationRequest

    public init(
        request: NameValidationRequest
    ) {
        self.request = request
    }
}
