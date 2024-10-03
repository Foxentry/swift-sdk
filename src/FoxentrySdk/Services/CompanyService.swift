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

public class CompanyService {
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
     * Validate company data
     * This endpoint requires at least 1 query parameter and will check if the parameters and their combinations are valid. Returns information about the company based on the datascope set in the options.<br><br> Foxentry validator is able not only to evaluate the validity of the inputed information but it also can fix various typos, errors and missing data. Foxentry can also suggest more suitable alternatives to the data sent in query. Please pay attention to the <b>result</b>, <b>resultCorrected</b> and <b>suggestions</b> in the response.<br><br> Always check <b>result.proposal</b> in the response for a proposed solution by Foxentry how you should process the response in your form or application.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return ValidateCompanyData Successful response
     */
    public func validateCompanyData(
        requestBody: ValidateCompanyDataRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> ValidateCompanyDataResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/company/validate"),
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
        let result: ValidateCompanyDataResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: ValidateCompanyData = try Utils.decodeJson(data: data)
            result = .validateCompanyData(decoded)
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
                    debugDescription: "Can't decode ValidateCompanyDataResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return ValidateCompanyDataResponseData(
            value: result,
            status: response.statusCode,
            headers: ValidateCompanyDataResponseData.ValidateCompanyDataHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct ValidateCompanyDataResponseData {
        public let value: ValidateCompanyDataResponseWrapper
        public let status: Int
        public let headers: ValidateCompanyDataHeaders

        public struct ValidateCompanyDataHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum ValidateCompanyDataResponseWrapper: Codable {
        case validateCompanyData(ValidateCompanyData)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(validateCompanyData: ValidateCompanyData) {
            self = .validateCompanyData(validateCompanyData)
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
     * Search company
     * This enpoint mainly serves as <b>autocomplete</b> but can be used to search for specific companies based on filter criteria as well. Foxentry will automatically offer you suggestions to complete the company you are writing down. <br><br>Pay attention to the <b>client</b> section in the request body. You can specify the user's location in order to receive more relevant suggestions.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return CompanySearch Successful response
     */
    public func companySearch(
        requestBody: CompanySearchRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> CompanySearchResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/company/search"),
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
        let result: CompanySearchResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: CompanySearch = try Utils.decodeJson(data: data)
            result = .companySearch(decoded)
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
                    debugDescription: "Can't decode CompanySearchResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return CompanySearchResponseData(
            value: result,
            status: response.statusCode,
            headers: CompanySearchResponseData.CompanySearchHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct CompanySearchResponseData {
        public let value: CompanySearchResponseWrapper
        public let status: Int
        public let headers: CompanySearchHeaders

        public struct CompanySearchHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum CompanySearchResponseWrapper: Codable {
        case companySearch(CompanySearch)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(companySearch: CompanySearch) {
            self = .companySearch(companySearch)
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
     * Get company data
     * Foxentry allows you to get information about company based on the <b>dataScope</b> option. <b>Country</b> and <b>registrationNumber</b> parameters are required.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return GetCompanyData Successful response
     */
    public func getCompanyData(
        requestBody: GetCompanyDataRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> GetCompanyDataResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/company/get"),
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
        let result: GetCompanyDataResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: GetCompanyData = try Utils.decodeJson(data: data)
            result = .getCompanyData(decoded)
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
                    debugDescription: "Can't decode GetCompanyDataResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return GetCompanyDataResponseData(
            value: result,
            status: response.statusCode,
            headers: GetCompanyDataResponseData.GetCompanyDataHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct GetCompanyDataResponseData {
        public let value: GetCompanyDataResponseWrapper
        public let status: Int
        public let headers: GetCompanyDataHeaders

        public struct GetCompanyDataHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum GetCompanyDataResponseWrapper: Codable {
        case getCompanyData(GetCompanyData)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(getCompanyData: GetCompanyData) {
            self = .getCompanyData(getCompanyData)
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

public class ValidateCompanyDataRequestBody: Codable {
    public var request: ValidateCompanyDataRequest

    public init(
        request: ValidateCompanyDataRequest
    ) {
        self.request = request
    }
}

public class CompanySearchRequestBody: Codable {
    public var request: CompanySearchRequest

    public init(
        request: CompanySearchRequest
    ) {
        self.request = request
    }
}

public class GetCompanyDataRequestBody: Codable {
    public var request: GetCompanyDataRequest

    public init(
        request: GetCompanyDataRequest
    ) {
        self.request = request
    }
}
