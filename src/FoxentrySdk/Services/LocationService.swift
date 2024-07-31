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

public class LocationService {
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
     * Validate location data
     * This endpoint requires at least 1 query parameter and will check if the parameters and their combinations are valid. Returns information about the location based on the datascope set in the options.<br><br> Foxentry validator is able not only to evaluate the validity of the inputed information but it also can fix various typos, errors and missing data. Foxentry can also suggest more suitable alternatives to the data sent in query. Please pay attention to the <b>result</b>, <b>resultCorrected</b> and <b>suggestions</b> in the response.<br><br> Always check <b>result.proposal</b> in the response for a proposed solution by Foxentry how you should process the response in your form or application.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return LocationValidation Successful response
     */
    public func locationValidation(
        requestBody: LocationValidationRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> LocationValidationResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/location/validate"),
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
        let result: LocationValidationResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: LocationValidation = try Utils.decodeJson(data: data)
            result = .locationValidation(decoded)
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
                    debugDescription: "Can't decode LocationValidationResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return LocationValidationResponseData(
            value: result,
            status: response.statusCode,
            headers: LocationValidationResponseData.LocationValidationHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct LocationValidationResponseData {
        public let value: LocationValidationResponseWrapper
        public let status: Int
        public let headers: LocationValidationHeaders

        public struct LocationValidationHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum LocationValidationResponseWrapper: Codable {
        case locationValidation(LocationValidation)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(locationValidation: LocationValidation) {
            self = .locationValidation(locationValidation)
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
     * Search location
     * This enpoint mainly serves as <b>autocomplete</b> but can be used to search for specific addresses based on filter criteria as well. Foxentry will automatically offer you suggestions to complete the address you are writing down. <br><br>Pay attention to the <b>client</b> section in the request body. You can specify the user's location in order to receive more relevant suggestions.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return LocationSearch Successful response
     */
    public func locationSearch(
        requestBody: LocationSearchRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> LocationSearchResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/location/search"),
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
        let result: LocationSearchResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: LocationSearch = try Utils.decodeJson(data: data)
            result = .locationSearch(decoded)
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
                    debugDescription: "Can't decode LocationSearchResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return LocationSearchResponseData(
            value: result,
            status: response.statusCode,
            headers: LocationSearchResponseData.LocationSearchHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct LocationSearchResponseData {
        public let value: LocationSearchResponseWrapper
        public let status: Int
        public let headers: LocationSearchHeaders

        public struct LocationSearchHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum LocationSearchResponseWrapper: Codable {
        case locationSearch(LocationSearch)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(locationSearch: LocationSearch) {
            self = .locationSearch(locationSearch)
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
     * Get location data
     * Foxentry allows you to get information about location based on the <b>dataScope</b> option. <b>Country</b> and <b>ID</b> parameters are required. You can either choose internal ID, which is assigned by Foxentry or external ID from the data source. <b>CZ external</b> = RUIAN, <b>PL external</b> = Gov data, <b>SK external does not exist</b>.
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return LocationGet Successful response
     */
    public func locationGet(
        requestBody: LocationGetRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> LocationGetResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/location/get"),
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
        let result: LocationGetResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: LocationGet = try Utils.decodeJson(data: data)
            result = .locationGet(decoded)
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
                    debugDescription: "Can't decode LocationGetResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return LocationGetResponseData(
            value: result,
            status: response.statusCode,
            headers: LocationGetResponseData.LocationGetHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct LocationGetResponseData {
        public let value: LocationGetResponseWrapper
        public let status: Int
        public let headers: LocationGetHeaders

        public struct LocationGetHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum LocationGetResponseWrapper: Codable {
        case locationGet(LocationGet)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(locationGet: LocationGet) {
            self = .locationGet(locationGet)
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
     * Localization
     * Foxentry allows you to check an area with GPS radius in order to return all the addresses within that area. It can also give you additional information about the addresses based on the <b>dataScope</b> option.<br><br>Please pay attention to the <b>singleLocationResultDistance</b> option, which determines the radius of the search area in meters.<br><br>
     * @param requestBody
     * @param foxentryIncludeRequestDetails Parameter to add details of your request.
     * @return LocationLocalization Successful response
     */
    public func locationLocalization(
        requestBody: LocationLocalizationRequestBody?,
        foxentryIncludeRequestDetails: Bool?
    ) async throws -> LocationLocalizationResponseData {
        let request = HttpClientRequest(
            method: .post,
            url: Utils.joinUrl(baseUrl: config.url, endpoint: "/location/localize"),
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
        let result: LocationLocalizationResponseWrapper

        switch response.statusCode {
        case 200:
            let decoded: LocationLocalization = try Utils.decodeJson(data: data)
            result = .locationLocalization(decoded)
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
                    debugDescription: "Can't decode LocationLocalizationResponseWrapper due to unexpected status code: \(response.statusCode)"
                )
            )
        }

        return LocationLocalizationResponseData(
            value: result,
            status: response.statusCode,
            headers: LocationLocalizationResponseData.LocationLocalizationHeaders(
                foxentryApiVersion: response.value(forHTTPHeaderField: "foxentry-api-version"),
                foxentryDailyCreditsLeft: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-left") ?? ""),
                foxentryDailyCreditsLimit: Double(response.value(forHTTPHeaderField: "foxentry-daily-credits-limit") ?? ""),
                foxentryRateLimit: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit") ?? ""),
                foxentryRateLimitPeriod: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-period") ?? ""),
                foxentryRateLimitRemaining: Int(response.value(forHTTPHeaderField: "foxentry-rate-limit-remaining") ?? "")
            )
        )
    }

    public struct LocationLocalizationResponseData {
        public let value: LocationLocalizationResponseWrapper
        public let status: Int
        public let headers: LocationLocalizationHeaders

        public struct LocationLocalizationHeaders {
            public let foxentryApiVersion: String?
            public let foxentryDailyCreditsLeft: Double?
            public let foxentryDailyCreditsLimit: Double?
            public let foxentryRateLimit: Int?
            public let foxentryRateLimitPeriod: Int?
            public let foxentryRateLimitRemaining: Int?
        }
    }

    public enum LocationLocalizationResponseWrapper: Codable {
        case locationLocalization(LocationLocalization)
        case error400(Error400)
        case error401(Error401)
        case error402(Error402)
        case error403(Error403)
        case error404(Error404)
        case error405(Error405)
        case error429(Error429)
        case error500(Error500)
        case error503(Error503)

        init(locationLocalization: LocationLocalization) {
            self = .locationLocalization(locationLocalization)
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

public class LocationValidationRequestBody: Codable {
    public var request: LocationValidationRequest

    public init(
        request: LocationValidationRequest
    ) {
        self.request = request
    }
}

public class LocationSearchRequestBody: Codable {
    public var request: LocationSearchRequest

    public init(
        request: LocationSearchRequest
    ) {
        self.request = request
    }
}

public class LocationGetRequestBody: Codable {
    public var request: LocationGetRequest

    public init(
        request: LocationGetRequest
    ) {
        self.request = request
    }
}

public class LocationLocalizationRequestBody: Codable {
    public var request: LocationLocalizationRequest

    public init(
        request: LocationLocalizationRequest
    ) {
        self.request = request
    }
}
