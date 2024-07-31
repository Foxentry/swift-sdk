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

/**
 * Successful response
 */
public class EmailSearch: Codable {
    public var status: Int
    public var request: EmailSearchRequestModel
    public var response: EmailSearchResponse?
    public var errors: [EmailSearchErrors?]?
    public init(
        status: Int,
        request: EmailSearchRequestModel,
        response: EmailSearchResponse?,
        errors: [EmailSearchErrors?]?
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class EmailSearchRequestModel: GlobalRequest {
    public var query: EmailSearchRequestModelQuery?
    public var options: EmailSearchRequestModelOptions?
    public var client: ClientRequest?
    public init(
        query: EmailSearchRequestModelQuery?,
        options: EmailSearchRequestModelOptions?,
        client: ClientRequest?,
        endpoint: String,
        code: String,
        customId: String?
    ) {
        self.query = query
        self.options = options
        self.client = client
        super.init(
            endpoint: endpoint,
            code: code,
            customId: customId
        )
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        query = try container.decodeIfPresent(EmailSearchRequestModelQuery.self, forKey: .query)
        options = try container.decodeIfPresent(EmailSearchRequestModelOptions.self, forKey: .options)
        client = try container.decodeIfPresent(ClientRequest.self, forKey: .client)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case query
        case options
        case client
    }
}

public class EmailSearchRequestModelQuery: Codable {
    public var value: String?
    public init(
        value: String?
    ) {
        self.value = value
    }
}

/**
 * Query options.
 */
public class EmailSearchRequestModelOptions: Codable {
    public var resultsLimit: Double?
    public init(
        resultsLimit: Double?
    ) {
        self.resultsLimit = resultsLimit
    }
}

public class EmailSearchErrors: Codable {
    public init(
    ) {}
}
