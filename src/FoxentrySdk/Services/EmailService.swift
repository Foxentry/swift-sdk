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

public class EmailService {
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
     * Validate email
     * This endpoint will let you check if the e-mail address sent in query is valid.<br><br> Please pay attention to the <b>validationType</b> option since it has direct impact on the returned data. <b>Extended validation</b> (default) is the more advanced type that checks the real existence of the e-mail address and its deliverability. It also informs you about various flags such as <b>freemail and disposable mail</b> detection. <br><br> Foxentry validator is able not only to evaluate the validity of the inputed information but it also can fix various typos, errors and missing data. Foxentry can also suggest more suitable alternatives to the data sent in query. Please pay attention to the <b>result</b>, <b>resultCorrected</b> and <b>suggestions</b> in the response.<br><br> Always check <b>result.proposal</b> in the response for a proposed solution by Foxentry how you should process the response in your form or application.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return ValidateEmail Successful response
     */
    public func validateEmail(
        requestBody: ValidateEmailRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> ValidateEmailResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/email/validate"),
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
        let result: ValidateEmailResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: ValidateEmail = try Utils.decodeJson(data: data)
            result = .validateEmail(decoded)
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
                    debugDescription: "Can't decode ValidateEmailResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return ValidateEmailResponseData(
            value: result,
            status: response.statusCode,
            headers: ValidateEmailResponseData.ValidateEmailHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct ValidateEmailResponseData {
        public let value: ValidateEmailResponseWrapper
        public let status: Int
        public let headers: ValidateEmailHeaders

        public struct ValidateEmailHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum ValidateEmailResponseWrapper: Codable {
        case validateEmail(ValidateEmail)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(validateEmail: ValidateEmail) {
            self = .validateEmail(validateEmail)
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
    } /**
     * Search email
     * Foxentry will automatically offer you suggestions to complete the e-mail address you are writing down. This mainly serves as <b>autocomplete</b>.<br><br> Pay attention to the <b>client</b> section in the request body. You can specify the user's location in order to receive more relevant suggestions.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return EmailSearch Successful response
     */
    public func emailSearch(
        requestBody: EmailSearchRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> EmailSearchResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/email/search"),
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
        let result: EmailSearchResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: EmailSearch = try Utils.decodeJson(data: data)
            result = .emailSearch(decoded)
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
                    debugDescription: "Can't decode EmailSearchResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return EmailSearchResponseData(
            value: result,
            status: response.statusCode,
            headers: EmailSearchResponseData.EmailSearchHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct EmailSearchResponseData {
        public let value: EmailSearchResponseWrapper
        public let status: Int
        public let headers: EmailSearchHeaders

        public struct EmailSearchHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum EmailSearchResponseWrapper: Codable {
        case emailSearch(EmailSearch)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(emailSearch: EmailSearch) {
            self = .emailSearch(emailSearch)
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

public class ValidateEmailRequestBody: Codable {
    public var request: ValidateEmailRequest

    public init(
        request: ValidateEmailRequest
    ) {
        self.request = request
    }
}

public class EmailSearchRequestBody: Codable {
    public var request: EmailSearchRequest

    public init(
        request: EmailSearchRequest
    ) {
        self.request = request
    }
}
