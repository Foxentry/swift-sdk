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

public class Error402RequestBillingNoCredit: Codable {
    public var group: Error402RequestBillingNoCreditGroup?
    public var type: Error402RequestBillingNoCreditType?
    public var subtype: Error402RequestBillingNoCreditSubtype?
    public var severity: Error402RequestBillingNoCreditSeverity?
    public var relatedTo: [String?]?
    public var description: Error402RequestBillingNoCreditDescription?
    public init(
        group: Error402RequestBillingNoCreditGroup?,
        type: Error402RequestBillingNoCreditType?,
        subtype: Error402RequestBillingNoCreditSubtype?,
        severity: Error402RequestBillingNoCreditSeverity?,
        relatedTo: [String?]?,
        description: Error402RequestBillingNoCreditDescription?
    ) {
        self.group = group
        self.type = type
        self.subtype = subtype
        self.severity = severity
        self.relatedTo = relatedTo
        self.description = description
    }
}

/**
 * Group of error.
 */
public enum Error402RequestBillingNoCreditGroup: String, Codable, UnknownCaseRepresentable {
    case REQUEST
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error402RequestBillingNoCreditType: String, Codable, UnknownCaseRepresentable {
    case BILLING
    // Fallback case
    case unknown
}

/**
 * Subtype of error.
 */
public enum Error402RequestBillingNoCreditSubtype: String, Codable, UnknownCaseRepresentable {
    case NO_CREDIT
    // Fallback case
    case unknown
}

/**
 * Severity of error. <b>Info</b> = cosmetic changes that don't change the overall meaning. <b>Warning</b> = typos and other errors that could affect the meaning. <b>Critical</b> = critical errors.
 */
public enum Error402RequestBillingNoCreditSeverity: String, Codable, UnknownCaseRepresentable {
    case CRITICAL = "critical"
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error402RequestBillingNoCreditDescription: String, Codable, UnknownCaseRepresentable {
    case NO_CREDIT_AVAILABLE_YOU_NEED_TO_PURCHASE_A_SUFFICIENT_AMMOUNT_OF_CREDITS_IN_THE_PROJECT_ADMINISTRATION_AT_APP_FOXENTRY_COM_ = "No credit available. You need to purchase a sufficient ammount of credits in the project administration at app.foxentry.com."
    // Fallback case
    case unknown
}
