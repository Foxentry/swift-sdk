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

public class ValidateEmailRequest: Codable {
    public var customId: String?
    public var query: ValidateEmailRequestQuery
    public var options: ValidateEmailRequestOptions?
    public var client: ClientRequest?
    public init(
        customId: String?,
        query: ValidateEmailRequestQuery,
        options: ValidateEmailRequestOptions?,
        client: ClientRequest?
    ) {
        self.customId = customId
        self.query = query
        self.options = options
        self.client = client
    }
}

public class ValidateEmailRequestQuery: Codable {
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
public class ValidateEmailRequestOptions: Codable {
    public var validationType: ValidateEmailRequestOptionsValidationType?
    public var acceptDisposableEmails: Bool?
    public var acceptFreemails: Bool?
    public init(
        validationType: ValidateEmailRequestOptionsValidationType?,
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
public enum ValidateEmailRequestOptionsValidationType: String, Codable, UnknownCaseRepresentable {
    case BASIC = "basic"

    case EXTENDED = "extended"
    // Fallback case
    case unknown
}
