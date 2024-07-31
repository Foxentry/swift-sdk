import FoxentrySdk
import XCTest

class CompanyServiceTests: XCTestCase {
    func testValidateCompanyData() async throws {
        let config = Config(token: "api_token")
        let mockResponse: ValidateCompanyData = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "company/validate", 
                "code": "gc0nCfcELaPSHH4Qo4UBaC7DbAj6G4", 
                "customId": "customer567914", 
                "query": {
                "name": "AVA Trans s.r.o.", 
                "country": "SK", 
                "registrationNumber": "52072169", 
                "taxNumber": "2120884337", 
                "vatNumber": "SK2120884337"
            }, 
                "options": {
                "dataScope": "FULL", 
                "dataSource": [], 
                "includeTerminatedSubjects": true, 
                "resultsLimit": 10, 
                "zipFormat": false, 
                "cityFormat": "BASIC", 
                "countryFormat": "ALPHA2", 
                "filterMode": "LIMIT"
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
                "data": {
                "country": "CZ", 
                "uuid": "", 
                "name": "Avantro s.r.o.", 
                "registrationNumber": "04997476", 
                "taxNumber": "CZ04997476", 
                "vatNumber": "CZ04997476", 
                "vatNumberSpecial": "CZ0581019", 
                "address": {
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
            }
            }, 
                "addressOfficial": {
                "data": {
                "country": "CZ", 
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
                "full": "Jeseniova 1151/55 Praha 130000"
            }
            }, 
                "nace": [], 
                "databoxes": [], 
                "registrations": [], 
                "legalForm": {
                "code": "112", 
                "name": "Společnost s ručením omezeným."
            }, 
                "legalFormSpecific": {
                "code": null, 
                "name": null
            }, 
                "esa2010": {
                "code": "11002", 
                "name": "Nefinanční podniky soukromé národní"
            }, 
                "dates": {
                "created": "2016-04-15", 
                "terminated": "2016-04-15"
            }, 
                "employees": {
                "count": null, 
                "category": "1000-1499"
            }, 
                "insolvency": {
                "history": []
            }, 
                "businessPremises": [], 
                "authority": [], 
                "capital": {
                "value": {
                "amount": "200000", 
                "currency": "CZK"
            }, 
                "shareholders": [], 
                "stocks": []
            }, 
                "tradeLicences": [], 
                "vat": {
                "status": "PAYER", 
                "reliability": {
                "reliable": true, 
                "unreliableFrom": "2018-09-01"
            }, 
                "bankAccounts": [], 
                "history": []
            }
            }, 
                "isValid": true, 
                "proposal": "VALID", 
                "errors": []
            }, 
                "resultCorrected": {
                "data": {
                "country": "CZ", 
                "uuid": "", 
                "name": "Avantro s.r.o.", 
                "registrationNumber": "04997476", 
                "taxNumber": "CZ04997476", 
                "vatNumber": "CZ04997476", 
                "vatNumberSpecial": "CZ0581019", 
                "address": {
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
            }
            }, 
                "addressOfficial": {
                "data": {
                "country": "CZ", 
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
                "full": "Jeseniova 1151/55 Praha 130000"
            }
            }, 
                "nace": [], 
                "databoxes": [], 
                "registrations": [], 
                "legalForm": {
                "code": "112", 
                "name": "Společnost s ručením omezeným."
            }, 
                "legalFormSpecific": {
                "code": null, 
                "name": null
            }, 
                "esa2010": {
                "code": "11002", 
                "name": "Nefinanční podniky soukromé národní"
            }, 
                "dates": {
                "created": "2016-04-15", 
                "terminated": "2016-04-15"
            }, 
                "employees": {
                "count": null, 
                "category": "1000-1499"
            }, 
                "insolvency": {
                "history": []
            }, 
                "businessPremises": [], 
                "authority": [], 
                "capital": {
                "value": {
                "amount": "200000", 
                "currency": "CZK"
            }, 
                "shareholders": [], 
                "stocks": []
            }, 
                "tradeLicences": [], 
                "vat": {
                "status": "PAYER", 
                "reliability": {
                "reliable": true, 
                "unreliableFrom": "2018-09-01"
            }, 
                "bankAccounts": [], 
                "history": []
            }
            }, 
                "isValid": true, 
                "errors": [], 
                "fixes": []
            }, 
                "suggestions": []
            }, 
                "errors": []
            }
            """#
            let data = json.data(using: .utf8)!
            return try! JSONDecoder().decode(ValidateCompanyData.self, from: data)
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
                url: URL(string: "\(config.url)/company/validate")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = CompanyService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: CompanyService.ValidateCompanyDataResponseWrapper = .validateCompanyData(mockResponse)

        let response = try await service.validateCompanyData(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "name": "AVA Trans s.r.o.", 
                    "country": "SK", 
                    "registrationNumber": "52072169", 
                    "taxNumber": "2120884337", 
                    "vatNumber": "SK2120884337"
                }, 
                    "options": {
                    "dataScope": "FULL", 
                    "dataSource": [], 
                    "resultsLimit": 10, 
                    "includeTerminatedSubjects": false, 
                    "zipFormat": false, 
                    "cityFormat": "BASIC", 
                    "countryFormat": "ALPHA2", 
                    "filterMode": "LIMIT"
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
                return try! JSONDecoder().decode(ValidateCompanyDataRequestBody.self, from: data)
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

    func testCompanySearch() async throws {
        let config = Config(token: "api_token")
        let mockResponse: CompanySearch = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "company/validate", 
                "code": "gc0nCfcELaPSHH4Qo4UBaC7DbAj6G4", 
                "customId": "customer567914", 
                "query": {
                "type": "NAME", 
                "value": "Avantro s.r.o.", 
                "filter": {
                "registrationNumber": "1234567", 
                "taxNumber": "11223344", 
                "vatNumber": "11223344", 
                "name": "Avantro s.r.o.", 
                "country": "CZ"
            }
            }, 
                "options": {
                "dataScope": "FULL", 
                "dataSource": [], 
                "resultsLimit": 10, 
                "includeTerminatedSubjects": false, 
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
                "resultsCount": 1, 
                "results": []
            }, 
                "errors": []
            }
            """#
            let data = json.data(using: .utf8)!
            return try! JSONDecoder().decode(CompanySearch.self, from: data)
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
                url: URL(string: "\(config.url)/company/search")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = CompanyService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: CompanyService.CompanySearchResponseWrapper = .companySearch(mockResponse)

        let response = try await service.companySearch(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "type": "NAME", 
                    "value": "Avantro", 
                    "filter": {
                    "name": "AVA Trans s.r.o.", 
                    "country": "SK", 
                    "registrationNumber": "52072169", 
                    "taxNumber": "2120884337", 
                    "vatNumber": "SK2120092029"
                }
                }, 
                    "options": {
                    "dataScope": "FULL", 
                    "dataSource": [], 
                    "resultsLimit": 10, 
                    "includeTerminatedSubjects": false, 
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
                return try! JSONDecoder().decode(CompanySearchRequestBody.self, from: data)
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

    func testGetCompanyData() async throws {
        let config = Config(token: "api_token")
        let mockResponse: GetCompanyData = {
            let json = #"""
                              {
                "status": 200, 
                "request": {
                "endpoint": "company/get", 
                "code": "gc0nCfcELaPSHH4Qo4UBaC7DbAj6G4", 
                "customId": "customer567914", 
                "query": {
                "country": "CZ", 
                "registrationNumber": "4997476"
            }, 
                "options": {
                "dataScope": "FULL", 
                "dataSource": [], 
                "includeTerminatedSubjects": false, 
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
            return try! JSONDecoder().decode(GetCompanyData.self, from: data)
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
                url: URL(string: "\(config.url)/company/get")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: responseHeaders
            )!
            return (response, data)
        }

        let service = CompanyService(
            config: config,
            session: URLSession.mock
        )
        let expectedResponse: CompanyService.GetCompanyDataResponseWrapper = .getCompanyData(mockResponse)

        let response = try await service.getCompanyData(
            requestBody: {
                let json = #"""
                                {
                    "request": {
                    "customId": "customer567914", 
                    "query": {
                    "country": "CZ", 
                    "registrationNumber": "04997476"
                }, 
                    "options": {
                    "dataScope": "FULL", 
                    "dataSource": [], 
                    "includeTerminatedSubjects": false, 
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
                return try! JSONDecoder().decode(GetCompanyDataRequestBody.self, from: data)
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
