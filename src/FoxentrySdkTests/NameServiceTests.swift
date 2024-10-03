import FoxentrySdk
import XCTest

class NameServiceTests: XCTestCase {
    func testNameValidation() async throws {
        let config = Config(token: "api_token")
        let mockResponse: NameValidation = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "phone/validate", 
                "code": "gc0nCfcELaPSHH4Qo4UBaC7DbAj6G4", 
                "customId": "customer567914", 
                "query": {
                "name": "Jan", 
                "surname": "Novák", 
                "nameSurname": "Jan Novák"
            }, 
                "options": {
                "dataScope": "FULL", 
                "dataSource": [], 
                "acceptDegrees": false, 
                "acceptContext": false, 
                "validationDepth": "MINIMAL", 
                "smartMode": false
            }, 
                "client": {
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
                "proposal": "VALID_WITH_SUGGESTION", 
                "data": {
                "nameSurname": "Petr Novák", 
                "name": "Petr", 
                "surname": "Novák", 
                "context": [], 
                "degreesBefore": [], 
                "degreesAfter": []
            }, 
                "details": [], 
                "errors": []
            }, 
                "resultCorrected": {
                "isValid": true, 
                "data": {
                "nameSurname": "Petr Novák", 
                "name": "Petr", 
                "surname": "Novák", 
                "context": [], 
                "degreesBefore": [], 
                "degreesAfter": []
            }, 
                "details": [], 
                "fixes": []
            }, 
                "suggestions": []
            }, 
                "errors": []
            }
            """#
            let data = json.data(using: .utf8)!
            return try! JSONDecoder().decode(NameValidation.self, from: data)
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
                url: URL(string: "\(config.url)/name/validate")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = NameService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: NameService.NameValidationResponseWrapper = .nameValidation(mockResponse)

        let response = try await service.nameValidation(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "name": "Petr", 
                    "surname": "Novák"
                }, 
                    "options": {
                    "dataScope": "FULL", 
                    "dataSource": [], 
                    "acceptDegrees": false, 
                    "acceptContext": false, 
                    "validationDepth": "STRICT", 
                    "smartMode": true
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
                return try! JSONDecoder().decode(NameValidationRequestBody.self, from: data)
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
