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
public class ValidateEmail: Codable {
    public var status: Int
    public var request: ValidateEmailRequestModel
    public var response: ValidateEmailResponse
    public var errors: [ValidateEmailErrors?]
    public init(
        status: Int,
        request: ValidateEmailRequestModel,
        response: ValidateEmailResponse,
        errors: [ValidateEmailErrors?]
    ) {
        self.status = status
        self.request = request
        self.response = response
        self.errors = errors
    }
}

public class ValidateEmailRequestModel: GlobalRequest {
    public var query: ValidateEmailRequestModelQuery?
    public var options: ValidateEmailRequestModelOptions?
    public var client: ClientRequest?
    public init(
        query: ValidateEmailRequestModelQuery?,
        options: ValidateEmailRequestModelOptions?,
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
        query = try container.decodeIfPresent(ValidateEmailRequestModelQuery.self, forKey: .query)
        options = try container.decodeIfPresent(ValidateEmailRequestModelOptions.self, forKey: .options)
        client = try container.decodeIfPresent(ClientRequest.self, forKey: .client)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case query
        case options
        case client
    }
}

public class ValidateEmailRequestModelQuery: Codable {
    public var email: String
    public init(
        email: String
    ) {
        self.email = email
    }
}

/**
 * Query options.
 */
public class ValidateEmailRequestModelOptions: Codable {
    public var validationType: ValidateEmailRequestModelOptionsValidationType?
    public var acceptDisposableEmails: Bool?
    public var acceptFreemails: Bool?
    public init(
        validationType: ValidateEmailRequestModelOptionsValidationType?,
        acceptDisposableEmails: Bool?,
        acceptFreemails: Bool?
    ) {
        self.validationType = validationType
        self.acceptDisposableEmails = acceptDisposableEmails
        self.acceptFreemails = acceptFreemails
    }
}

/**
 * Type of validation. <b>Basic</b> = only the format of e-mail is checked and only standard corrections are included. <b>Extended</b> = in depth check of deliverability. Additional information is returned such as temporary mail check or freemail check. More complicated corrections are included.
 */
public enum ValidateEmailRequestModelOptionsValidationType: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}

public class ValidateEmailErrors: Codable {
    public init(
    ) {}
}
