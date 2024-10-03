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

public class Error500InternalBilling: Codable {
    public var group: Error500InternalBillingGroup?
    public var type: Error500InternalBillingType?
    public var subtype: String?
    public var severity: String?
    public var relatedTo: [String?]?
    public var description: Error500InternalBillingDescription?
    public init(
        group: Error500InternalBillingGroup?,
        type: Error500InternalBillingType?,
        subtype: String?,
        severity: String?,
        relatedTo: [String?]?,
        description: Error500InternalBillingDescription?
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
public enum Error500InternalBillingGroup: String, Codable, UnknownCaseRepresentable {
    case INTERNAL
    // Fallback case
    case unknown
}

/**
 * Type of error.
 */
public enum Error500InternalBillingType: String, Codable, UnknownCaseRepresentable {
    case BILLING
    // Fallback case
    case unknown
}

/**
 * Description of error.
 */
public enum Error500InternalBillingDescription: String, Codable, UnknownCaseRepresentable {
    case FAILED_TO_PROCESS_YOUR_REQUEST_DUE_TO_A_BILLING_INTERNAL_ERROR_PLEASE_CONTACT_US_IF_THE_ERROR_PERSISTS_ = "Failed to process your request due to a billing internal error. Please contact us if the error persists."
    // Fallback case
    case unknown
}
