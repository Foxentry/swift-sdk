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

public class EmailSearchRequest: Codable {
    public var customId: String?
    public var query: EmailSearchRequestQuery?
    public var options: EmailSearchRequestOptions?
    public var client: ClientRequest?
    public init(
        customId: String?,
        query: EmailSearchRequestQuery?,
        options: EmailSearchRequestOptions?,
        client: ClientRequest?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class EmailSearchRequestQuery: Codable {
    public var value: String
    public init(
        value: String
    ) {
        self.value = value
    }
}

/**
 * Query options.
 */
public class EmailSearchRequestOptions: Codable {
    public var resultsLimit: Double?
    public init(
        resultsLimit: Double?
    ) {
        self.resultsLimit = resultsLimit
    }
}
