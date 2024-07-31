import FoxentrySdk
import XCTest

class PhoneServiceTests: XCTestCase {
    func testValidatePhoneNumber() async throws {
        let config = Config(token: "api_token")
        let mockResponse: ValidatePhoneNumber = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "phone/validate", 
                "code": "gc0nCfcELaPSHH4Qo4UBaC7DbAj6G4", 
                "customId": "customer567914", 
                "query": {
                "prefix": "+420", 
                "number": "777555666", 
                "numberWithPrefix": "+420777555666"
            }, 
                "options": {
                "validationType": "extended", 
                "allowedPrefixes": [], 
                "formatNumber": false, 
                "preferredPrefixes": [], 
                "defaultPrefix": "+420"
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
                "proposal": "INVALID_WITH_CORRECTION", 
                "data": {
                "country": {
                "code": "CZ", 
                "prefix": "+420"
            }, 
                "prefix": "+420", 
                "number": "775111222", 
                "numberWithPrefix": "+420775111222", 
                "carrier": {
                "name": "Vodafone", 
                "type": "LANDLINE"
            }, 
                "format": {
                "national": "775111222", 
                "nationalFormatted": "775 111 222", 
                "international": "+420775111222", 
                "internationalFormatted": "+420 775 111 222"
            }
            }, 
                "errors": []
            }, 
                "resultCorrected": {
                "isValid": true, 
                "data": {
                "country": {
                "code": "CZ", 
                "prefix": "+420"
            }, 
                "prefix": "+420", 
                "number": "775111222", 
                "numberWithPrefix": "+420775111222", 
                "carrier": {
                "name": "Vodafone", 
                "type": "LANDLINE"
            }, 
                "format": {
                "national": "775111222", 
                "nationalFormatted": "775 111 222", 
                "international": "+420775111222", 
                "internationalFormatted": "+420 775 111 222"
            }
            }, 
                "errors": [], 
                "fixes": []
            }, 
                "suggestions": []
            }, 
                "errors": []
            }
            """#
            let data = json.data(using: .utf8)!
            return try! JSONDecoder().decode(ValidatePhoneNumber.self, from: data)
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
                url: URL(string: "\(config.url)/phone/validate")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = PhoneService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: PhoneService.ValidatePhoneNumberResponseWrapper = .validatePhoneNumber(mockResponse)

        let response = try await service.validatePhoneNumber(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "prefix": "+420", 
                    "number": "607123456"
                }, 
                    "options": {
                    "validationType": "EXTENDED", 
                    "allowedPrefixes": [], 
                    "preferredPrefixes": [], 
                    "defaultPrefix": "+420", 
                    "formatNumber": false
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
                return try! JSONDecoder().decode(ValidatePhoneNumberRequestBody.self, from: data)
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
