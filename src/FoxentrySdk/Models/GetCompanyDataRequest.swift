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

public class GetCompanyDataRequest: Codable {
    public var customId: String?
    public var query: GetCompanyDataRequestQuery
    public var options: CompanyDataRequestOption?
    public var client: ClientRequest?
    public init(
        customId: String?,
        query: GetCompanyDataRequestQuery,
        options: CompanyDataRequestOption?,
        client: ClientRequest?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class GetCompanyDataRequestQuery: Codable {
    public var country: String
    public var registrationNumber: String
    public init(
        country: String,
        registrationNumber: String
    ) {
        self.country = country
        self.registrationNumber = registrationNumber
    }
}
