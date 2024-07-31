import FoxentrySdk
import XCTest

class EmailServiceTests: XCTestCase {
    func testValidateEmail() async throws {
        let config = Config(token: "api_token")
        let mockResponse: ValidateEmail = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "location/validate", 
                "code": "internalrequestcode", 
                "customId": "customer567914", 
                "query": {
                "email": "info@foxentry.cz"
            }, 
                "options": {
                "validationType": "EXTENDED", 
                "acceptDisposableEmails": true, 
                "acceptFreemails": true
            }, 
                "client": {
                "ip": "127.0.1.1", 
                "country": "CZ", 
                "location": {
                "lat": 50.0628, 
                "lon": 13.9271
            }
            }
            }, 
                "response": {
                "result": {
                "isValid": true, 
                "proposal": "VALID", 
                "data": {
                "email": "me@gmali.com", 
                "user": "me", 
                "domain": "gmali.com"
            }, 
                "flags": {
                "isCatchAllServer": false, 
                "isDisposableEmailLocation": false, 
                "isFreeMail": false
            }, 
                "errors": []
            }, 
                "resultCorrected": {
                "isValid": true, 
                "data": {
                "email": "me@gmali.com", 
                "user": "me", 
                "domain": "gmali.com"
            }, 
                "flags": {
                "isCatchAllServer": false, 
                "isDisposableEmailLocation": false, 
                "isFreeMail": false
            }, 
                "fixes": []
            }, 
                "suggestions": []
            }, 
                "errors": []
            }
            """#
            let data = json.data(using: .utf8)!
            return try! JSONDecoder().decode(ValidateEmail.self, from: data)
        }()
        let responseHeaders: [String: String] = [
            "foxentry-api-version": "2.0",
            "foxentry-daily-credits-left": "9881.64",
            "foxentry-daily-credits-limit": "1000",
            "foxentry-rate-limit": "5000",
            "foxentry-rate-limit-period": "900",
            "foxentry-rate-limit-remaining": "4999",
        ]

        MockURLProtocol.error = nil
        MockURLProtocol.requestHandler = { _ in
            let data = try! JSONEncoder().encode(mockResponse)
            let response = HTTPURLResponse(
                url: URL(string: "\(config.url)/email/validate")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = EmailService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: EmailService.ValidateEmailResponseWrapper = .validateEmail(mockResponse)

        let response = try await service.validateEmail(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "email": "info@foxentry.cz"
                }, 
                    "options": {
                    "validationType": "EXTENDED", 
                    "acceptDisposableEmails": true, 
                    "acceptFreemails": true
                }, 
                    "client": {
                    "ip": "127.0.1.1", 
                    "country": "CZ", 
                    "location": {
                    "lat": 50.0628, 
                    "lon": 13.9271
                }
                }
                }
                }
                """#
                let data = json.data(using: .utf8)!
                return try! JSONDecoder().decode(ValidateEmailRequestBody.self, from: data)
            }(),

            foxentryIncludeRequestDetails: false
        )
        XCTAssertNotNil(response.value)
        let encoder = JSONEncoder()
        encoder.outputFormatting = .sortedKeys
        XCTAssertEqual(
            String(data: try! encoder.encode(response.value), encoding: .utf8),
            String(data: try! encoder.encode(expectedResponse), encoding: .utf8)
        )
        XCTAssertEqual(response.headers.foxentryApiVersion, "2.0")
        XCTAssertEqual(response.headers.foxentryDailyCreditsLeft, 9881.64)
        XCTAssertEqual(response.headers.foxentryDailyCreditsLimit, 1000)
        XCTAssertEqual(response.headers.foxentryRateLimit, 5000)
        XCTAssertEqual(response.headers.foxentryRateLimitPeriod, 900)
        XCTAssertEqual(response.headers.foxentryRateLimitRemaining, 4999)
    }

    func testEmailSearch() async throws {
        let config = Config(token: "api_token")
        let mockResponse: EmailSearch = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "email/search", 
                "code": "internalrequestcode", 
                "customId": "customer567914", 
                "query": {
                "value": "info@foxentry.com"
            }, 
                "options": {
                "resultsLimit": 5
            }, 
                "client": {
                "ip": "127.0.1.1", 
                "country": "CZ", 
                "location": {
                "lat": 50.0628, 
                "lon": 13.9271
            }
            }
            }, 
                "response": {
                "resultsCount": 1, 
                "results": []
            }, 
                "errors": []
            }
            """#
            let data = json.data(using: .utf8)!
            return try! JSONDecoder().decode(EmailSearch.self, from: data)
        }()
        let responseHeaders: [String: String] = [
            "foxentry-api-version": "2.0",
            "foxentry-daily-credits-left": "9881.64",
            "foxentry-daily-credits-limit": "1000",
            "foxentry-rate-limit": "5000",
            "foxentry-rate-limit-period": "900",
            "foxentry-rate-limit-remaining": "4999",
        ]

        MockURLProtocol.error = nil
        MockURLProtocol.requestHandler = { _ in
            let data = try! JSONEncoder().encode(mockResponse)
            let response = HTTPURLResponse(
                url: URL(string: "\(config.url)/email/search")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = EmailService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: EmailService.EmailSearchResponseWrapper = .emailSearch(mockResponse)

        let response = try await service.emailSearch(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "value": "info@foxentry.com"
                }, 
                    "options": {
                    "resultsLimit": 5
                }, 
                    "client": {
                    "ip": "127.0.1.1", 
                    "country": "CZ", 
                    "location": {
                    "lat": 50.0628, 
                    "lon": 13.9271
                }
                }
                }
                }
                """#
                let data = json.data(using: .utf8)!
                return try! JSONDecoder().decode(EmailSearchRequestBody.self, from: data)
            }(),

            foxentryIncludeRequestDetails: false
        )
        XCTAssertNotNil(response.value)
        let encoder = JSONEncoder()
        encoder.outputFormatting = .sortedKeys
        XCTAssertEqual(
            String(data: try! encoder.encode(response.value), encoding: .utf8),
            String(data: try! encoder.encode(expectedResponse), encoding: .utf8)
        )
        XCTAssertEqual(response.headers.foxentryApiVersion, "2.0")
        XCTAssertEqual(response.headers.foxentryDailyCreditsLeft, 9881.64)
        XCTAssertEqual(response.headers.foxentryDailyCreditsLimit, 1000)
        XCTAssertEqual(response.headers.foxentryRateLimit, 5000)
        XCTAssertEqual(response.headers.foxentryRateLimitPeriod, 900)
        XCTAssertEqual(response.headers.foxentryRateLimitRemaining, 4999)
    }
}
