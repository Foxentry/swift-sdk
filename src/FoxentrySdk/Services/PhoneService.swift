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

public class PhoneService {
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
     * Validate phone number
     * Foxentry allows you to check validity and the existence of phone numbers. It can also give you additional information about the validated phone number based on the <b>validationType</b> option.<br><br>Please pay attention to the <b>formatNumber</b> option. This option defines the format of number that should be considered as valid. <br><br>Foxentry validator is able not only to evaluate the validity of the inputed information but it also can fix various typos, errors and missing data. Foxentry can also suggest more suitable alternatives to the data sent in query. Please pay attention to the <b>result</b>, <b>resultCorrected</b> and <b>suggestions</b> in the response.<br><br> Always check <b>result.proposal</b> in the response for a proposed solution by Foxentry how you should process the response in your form or application.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return ValidatePhoneNumber Successful response
     */
    public func validatePhoneNumber(
        requestBody: ValidatePhoneNumberRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> ValidatePhoneNumberResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/phone/validate"),
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
        let result: ValidatePhoneNumberResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: ValidatePhoneNumber = try Utils.decodeJson(data: data)
            result = .validatePhoneNumber(decoded)
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
                    debugDescription: "Can't decode ValidatePhoneNumberResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return ValidatePhoneNumberResponseData(
            value: result,
            status: response.statusCode,
            headers: ValidatePhoneNumberResponseData.ValidatePhoneNumberHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct ValidatePhoneNumberResponseData {
        public let value: ValidatePhoneNumberResponseWrapper
        public let status: Int
        public let headers: ValidatePhoneNumberHeaders

        public struct ValidatePhoneNumberHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum ValidatePhoneNumberResponseWrapper: Codable {
        case validatePhoneNumber(ValidatePhoneNumber)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(validatePhoneNumber: ValidatePhoneNumber) {
            self = .validatePhoneNumber(validatePhoneNumber)
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

public class ValidatePhoneNumberRequestBody: Codable {
    public var request: ValidatePhoneNumberRequest

    public init(
        request: ValidatePhoneNumberRequest
    ) {
        self.request = request
    }
}
