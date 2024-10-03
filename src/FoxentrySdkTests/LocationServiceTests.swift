import FoxentrySdk
import XCTest

class LocationServiceTests: XCTestCase {
    func testLocationValidation() async throws {
        let config = Config(token: "api_token")
        let mockResponse: LocationValidation = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "location/validate", 
                "code": "internalrequestcode", 
                "customId": "customer567914", 
                "query": {
                "street": "Jeseniova", 
                "streetWithNumber": "Jeseniova 55", 
                "'number.full'": "1151/55d", 
                "'number.part1'": "1151", 
                "'number.part1Number'": "1151", 
                "'number.part1Letter'": null, 
                "'number.part2'": "55d", 
                "'number.part2Number'": "55", 
                "'number.part2Letter'": "d", 
                "city": "Praha", 
                "zip": "130 00", 
                "full": "Jeseniova 2770/56d, 130 00 Praha", 
                "country": "CZ"
            }, 
                "options": {
                "dataScope": "FULL", 
                "dataSource": [], 
                "resultsLimit": 10, 
                "zipFormat": false, 
                "cityFormat": "BASIC", 
                "countryFormat": "ALPHA2", 
                "filterMode": "LIMIT", 
                "acceptPostOfficeAsCity": true
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
                "country": "CZ", 
                "region": "Hlavní město Praha", 
                "district": "Hlavní město Praha", 
                "cityDistrict": "Praha 6", 
                "cityDistrictSpecial": "Praha 6", 
                "cityPart": "Dejvice", 
                "cityAdministrative": "Kraków", 
                "cadastralArea": "Dejvice", 
                "ids": {
                "internal": "2070391", 
                "external": "22349995", 
                "region": "19", 
                "discrict": "9999", 
                "cityDistrictSpecial": "86", 
                "cityDistrict": "500208", 
                "cityPart": "400637", 
                "cadastralArea": "730955", 
                "city": "554782", 
                "street": "554782"
            }, 
                "street": "Jeseniova", 
                "number": {
                "part1": "137", 
                "part1Number": "137", 
                "part1Letter": null, 
                "part2": "16", 
                "part2Number": "16", 
                "part2Letter": null, 
                "full": "137/16"
            }, 
                "streetWithNumber": "Jeseniova 1151/55", 
                "city": "Praha", 
                "zip": "13000", 
                "postOffice": {
                "name": "Praha 086"
            }, 
                "geometry": {
                "gps": {
                "lat": 50.087440865479, 
                "lon": 14.463284033285
            }, 
                "custom": []
            }, 
                "full": "Jeseniova 1151/55, 130 00 Praha 3"
            }, 
                "errors": []
            }, 
                "resultCorrected": {
                "isValid": true, 
                "data": {
                "country": "CZ", 
                "region": "Hlavní město Praha", 
                "district": "Hlavní město Praha", 
                "cityDistrict": "Praha 6", 
                "cityDistrictSpecial": "Praha 6", 
                "cityPart": "Dejvice", 
                "cityAdministrative": "Kraków", 
                "cadastralArea": "Dejvice", 
                "ids": {
                "internal": "2070391", 
                "external": "22349995", 
                "region": "19", 
                "discrict": "9999", 
                "cityDistrictSpecial": "86", 
                "cityDistrict": "500208", 
                "cityPart": "400637", 
                "cadastralArea": "730955", 
                "city": "554782", 
                "street": "554782"
            }, 
                "street": "Jeseniova", 
                "number": {
                "part1": "137", 
                "part1Number": "137", 
                "part1Letter": null, 
                "part2": "16", 
                "part2Number": "16", 
                "part2Letter": null, 
                "full": "137/16"
            }, 
                "streetWithNumber": "Jeseniova 1151/55", 
                "city": "Praha", 
                "zip": "13000", 
                "postOffice": {
                "name": "Praha 086"
            }, 
                "geometry": {
                "gps": {
                "lat": 50.087440865479, 
                "lon": 14.463284033285
            }, 
                "custom": []
            }, 
                "full": "Jeseniova 1151/55, 130 00 Praha 3"
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
            return try! JSONDecoder().decode(LocationValidation.self, from: data)
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
                url: URL(string: "\(config.url)/location/validate")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = LocationService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: LocationService.LocationValidationResponseWrapper = .locationValidation(mockResponse)

        let response = try await service.locationValidation(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "street": "Jeseniova", 
                    "streetWithNumber": "Jeseniova 55", 
                    "'number.full'": "1151/55d", 
                    "'number.part1'": "1151", 
                    "'number.part1Number'": "1151", 
                    "'number.part1Letter'": null, 
                    "'number.part2'": "55d", 
                    "'number.part2Number'": "55", 
                    "'number.part2Letter'": "d", 
                    "city": "Praha", 
                    "zip": "130 00", 
                    "full": "Jeseniova 2770/56d, 130 00 Praha", 
                    "country": "CZ"
                }, 
                    "options": {
                    "dataScope": "FULL", 
                    "dataSource": [], 
                    "resultsLimit": 10, 
                    "zipFormat": false, 
                    "cityFormat": "BASIC", 
                    "countryFormat": "ALPHA2", 
                    "filterMode": "LIMIT", 
                    "acceptPostOfficeAsCity": true
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
                return try! JSONDecoder().decode(LocationValidationRequestBody.self, from: data)
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

    func testLocationSearch() async throws {
        let config = Config(token: "api_token")
        let mockResponse: LocationSearch = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "location/search", 
                "code": "internalrequestcode", 
                "customId": "customer567914", 
                "query": {
                "type": "STREET", 
                "value": "", 
                "filter": {
                "street": "Jeseniova", 
                "streetWithNumber": "Jeseniova 55", 
                "'number.full'": "1151/55d", 
                "'number.part1'": "1151", 
                "'number.part2'": "55d", 
                "city": "Praha", 
                "zip": "130 00", 
                "country": "CZ"
            }
            }, 
                "options": {
                "dataScope": "FULL", 
                "dataSource": [], 
                "resultsLimit": 10, 
                "allowPartialResults": true, 
                "filterMode": "LIMIT", 
                "filterAcceptFormat": true, 
                "filterAcceptAlternatives": true, 
                "filterExactMatch": true, 
                "zipFormat": false, 
                "cityFormat": "BASIC", 
                "countryFormat": "ALPHA2"
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
                "resultsCount": 0, 
                "results": []
            }, 
                "errors": []
            }
            """#
            let data = json.data(using: .utf8)!
            return try! JSONDecoder().decode(LocationSearch.self, from: data)
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
                url: URL(string: "\(config.url)/location/search")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = LocationService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: LocationService.LocationSearchResponseWrapper = .locationSearch(mockResponse)

        let response = try await service.locationSearch(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "type": "STREET", 
                    "value": "", 
                    "filter": {
                    "street": "Jeseniova", 
                    "streetWithNumber": "Jeseniova 55", 
                    "'number.full'": "1151/55d", 
                    "'number.part1'": "1151", 
                    "'number.part2'": "55d", 
                    "city": "Praha", 
                    "zip": "130 00", 
                    "country": "CZ"
                }
                }, 
                    "options": {
                    "dataScope": "FULL", 
                    "dataSource": [], 
                    "resultsLimit": 10, 
                    "allowPartialResults": true, 
                    "filterMode": "LIMIT", 
                    "filterAcceptFormat": true, 
                    "filterAcceptAlternatives": true, 
                    "filterExactMatch": true, 
                    "zipFormat": false, 
                    "cityFormat": "BASIC", 
                    "countryFormat": "ALPHA2"
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
                return try! JSONDecoder().decode(LocationSearchRequestBody.self, from: data)
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

    func testLocationGet() async throws {
        let config = Config(token: "api_token")
        let mockResponse: LocationGet = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "location/get", 
                "code": "internalrequestcode", 
                "customId": "customer567914", 
                "query": {
                "country": "CZ", 
                "id": "d2ade877-1e95-4a83-baa6-5431ce5b3ca8"
            }, 
                "options": {
                "idType": "INTERNAL", 
                "dataScope": "FULL", 
                "dataSource": [], 
                "zipFormat": false, 
                "cityFormat": "BASIC", 
                "countryFormat": "ALPHA2"
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
                "results": []
            }, 
                "errors": []
            }
            """#
            let data = json.data(using: .utf8)!
            return try! JSONDecoder().decode(LocationGet.self, from: data)
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
                url: URL(string: "\(config.url)/location/get")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = LocationService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: LocationService.LocationGetResponseWrapper = .locationGet(mockResponse)

        let response = try await service.locationGet(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "country": "CZ", 
                    "id": "d2ade877-1e95-4a83-baa6-5431ce5b3ca8"
                }, 
                    "options": {
                    "idType": "INTERNAL", 
                    "dataScope": "FULL", 
                    "dataSource": [], 
                    "zipFormat": false, 
                    "cityFormat": "BASIC"
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
                return try! JSONDecoder().decode(LocationGetRequestBody.self, from: data)
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

    func testLocationLocalization() async throws {
        let config = Config(token: "api_token")
        let mockResponse: LocationLocalization = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "location/localize", 
                "code": "internalrequestcode", 
                "customId": "customer567914", 
                "query": {
                "lat": 50.0628, 
                "lon": 13.9271
            }, 
                "options": {
                "dataScope": "FULL", 
                "dataSource": [], 
                "resultsLimit": 10, 
                "radius": 50, 
                "acceptNearest": false, 
                "zipFormat": false, 
                "cityFormat": "BASIC"
            }, 
                "client": {
                "ip": "127.0.1.1", 
                "country": "CZ"
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
            return try! JSONDecoder().decode(LocationLocalization.self, from: data)
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
                url: URL(string: "\(config.url)/location/localize")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = LocationService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: LocationService.LocationLocalizationResponseWrapper = .locationLocalization(mockResponse)

        let response = try await service.locationLocalization(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "lat": 50.0919999, 
                    "lon": 14.4527403
                }, 
                    "options": {
                    "dataScope": "FULL", 
                    "dataSource": [], 
                    "resultsLimit": 10, 
                    "zipFormat": false, 
                    "cityFormat": "BASIC", 
                    "countryFormat": "ALPHA2", 
                    "filterMode": "LIMIT", 
                    "radius": 50, 
                    "acceptNearest": false
                }, 
                    "client": {
                    "ip": "127.0.1.1", 
                    "country": "CZ"
                }
                }
                }
                """#
                let data = json.data(using: .utf8)!
                return try! JSONDecoder().decode(LocationLocalizationRequestBody.self, from: data)
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
