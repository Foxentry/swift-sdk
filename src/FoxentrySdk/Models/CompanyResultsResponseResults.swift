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

public class CompanyResultsResponseResults: Codable {
    public var data: CompanyResultsResponseResultsData
    public init(
        data: CompanyResultsResponseResultsData
    ) {
        self.data = data
    }
}

public class CompanyResultsResponseResultsData: Codable {
    public var country: String?
    public var uuid: String?
    public var name: String?
    public var registrationNumber: String?
    public var taxNumber: String?
    public var vatNumber: String?
    public var vatNumberSpecial: String?
    public var address: CompanyResultsResponseResultsDataAddress?
    public var addressOfficial: CompanyResultsResponseResultsDataAddressOfficial?
    public var nace: [CompanyResultsResponseResultsDataNace?]?
    public var databoxes: [CompanyResultsResponseResultsDataDataboxes?]?
    public var registrations: [CompanyResultsResponseResultsDataRegistrations?]?
    public var legalForm: CompanyResultsResponseResultsDataLegalForm?
    public var legalFormSpecific: CompanyResultsResponseResultsDataLegalFormSpecific?
    public var esa2010: CompanyResultsResponseResultsDataEsa2010?
    public var dates: CompanyResultsResponseResultsDataDates?
    public var employees: CompanyResultsResponseResultsDataEmployees?
    public var insolvency: CompanyResultsResponseResultsDataInsolvency?
    public var businessPremises: [CompanyResultsResponseResultsDataBusinessPremises?]?
    public var authority: [CompanyResultsResponseResultsDataAuthority?]?
    public var capital: CompanyResultsResponseResultsDataCapital?
    public var tradeLicences: [CompanyResultsResponseResultsDataTradeLicences?]?
    public var vat: CompanyResultsResponseResultsDataVat?
    public init(
        country: String?,
        uuid: String?,
        name: String?,
        registrationNumber: String?,
        taxNumber: String?,
        vatNumber: String?,
        vatNumberSpecial: String?,
        address: CompanyResultsResponseResultsDataAddress?,
        addressOfficial: CompanyResultsResponseResultsDataAddressOfficial?,
        nace: [CompanyResultsResponseResultsDataNace?]?,
        databoxes: [CompanyResultsResponseResultsDataDataboxes?]?,
        registrations: [CompanyResultsResponseResultsDataRegistrations?]?,
        legalForm: CompanyResultsResponseResultsDataLegalForm?,
        legalFormSpecific: CompanyResultsResponseResultsDataLegalFormSpecific?,
        esa2010: CompanyResultsResponseResultsDataEsa2010?,
        dates: CompanyResultsResponseResultsDataDates?,
        employees: CompanyResultsResponseResultsDataEmployees?,
        insolvency: CompanyResultsResponseResultsDataInsolvency?,
        businessPremises: [CompanyResultsResponseResultsDataBusinessPremises?]?,
        authority: [CompanyResultsResponseResultsDataAuthority?]?,
        capital: CompanyResultsResponseResultsDataCapital?,
        tradeLicences: [CompanyResultsResponseResultsDataTradeLicences?]?,
        vat: CompanyResultsResponseResultsDataVat?
    ) {
        self.country = country
        self.uuid = uuid
        self.name = name
        self.registrationNumber = registrationNumber
        self.taxNumber = taxNumber
        self.vatNumber = vatNumber
        self.vatNumberSpecial = vatNumberSpecial
        self.address = address
        self.addressOfficial = addressOfficial
        self.nace = nace
        self.databoxes = databoxes
        self.registrations = registrations
        self.legalForm = legalForm
        self.legalFormSpecific = legalFormSpecific
        self.esa2010 = esa2010
        self.dates = dates
        self.employees = employees
        self.insolvency = insolvency
        self.businessPremises = businessPremises
        self.authority = authority
        self.capital = capital
        self.tradeLicences = tradeLicences
        self.vat = vat
    }
}

public class CompanyResultsResponseResultsDataAddressOfficial: LocationOficial {}

/**
 * Address data
 */
public class CompanyResultsResponseResultsDataAddress: Codable {
    public var data: LocationData?
    public init(
        data: LocationData?
    ) {
        self.data = data
    }
}

public class CompanyResultsResponseResultsDataNace: Codable {
    public var code: String?
    public var name: String?
    public var isPrimary: Bool?
    public init(
        code: String?,
        name: String?,
        isPrimary: Bool?
    ) {
        self.code = code
        self.name = name
        self.isPrimary = isPrimary
    }
}

public class CompanyResultsResponseResultsDataDataboxes: Codable {
    public var code: String?
    public var name: String?
    public var receivingMessages: Bool?
    public init(
        code: String?,
        name: String?,
        receivingMessages: Bool?
    ) {
        self.code = code
        self.name = name
        self.receivingMessages = receivingMessages
    }
}

public class CompanyResultsResponseResultsDataRegistrations: Codable {
    public var type: CompanyResultsResponseResultsDataRegistrationsType?
    public var data: CompanyResultsResponseResultsDataRegistrationsData?
    public init(
        type: CompanyResultsResponseResultsDataRegistrationsType?,
        data: CompanyResultsResponseResultsDataRegistrationsData?
    ) {
        self.type = type
        self.data = data
    }
}

/**
 * Type of registration.
 */
public enum CompanyResultsResponseResultsDataRegistrationsType: String, Codable, UnknownCaseRepresentable {
    case BUSINESS_REGISTER = "businessRegister"

    case VAT_REGISTER = "vatRegister"
    // Fallback case
    case unknown
}

public class CompanyResultsResponseResultsDataRegistrationsData: Codable {
    public var registrator: CompanyResultsResponseResultsDataRegistrationsDataRegistrator?
    public var reference: String?
    public init(
        registrator: CompanyResultsResponseResultsDataRegistrationsDataRegistrator?,
        reference: String?
    ) {
        self.registrator = registrator
        self.reference = reference
    }
}

/**
 * Information about registrator.
 */
public class CompanyResultsResponseResultsDataRegistrationsDataRegistrator: Codable {
    public var name: String?
    public var detail: String?
    public init(
        name: String?,
        detail: String?
    ) {
        self.name = name
        self.detail = detail
    }
}

public class CompanyResultsResponseResultsDataLegalForm: Codable {
    public var code: String?
    public var name: String?
    public init(
        code: String?,
        name: String?
    ) {
        self.code = code
        self.name = name
    }
}

/**
 * Specific cases of legalForm.
 */
public class CompanyResultsResponseResultsDataLegalFormSpecific: Codable {
    public var code: String?
    public var name: String?
    public init(
        code: String?,
        name: String?
    ) {
        self.code = code
        self.name = name
    }
}

/**
 * The European System of National and Regional Accounts.
 */
public class CompanyResultsResponseResultsDataEsa2010: Codable {
    public var code: String?
    public var name: String?
    public init(
        code: String?,
        name: String?
    ) {
        self.code = code
        self.name = name
    }
}

/**
 * Important dates associated with company.
 */
public class CompanyResultsResponseResultsDataDates: Codable {
    public var created: String?
    public var terminated: String?
    public init(
        created: String?,
        terminated: String?
    ) {
        self.created = created
        self.terminated = terminated
    }
}

/**
 * Employees information.
 */
public class CompanyResultsResponseResultsDataEmployees: Codable {
    public var count: Double?
    public var category: String?
    public init(
        count: Double?,
        category: String?
    ) {
        self.count = count
        self.category = category
    }
}

/**
 * Company insolvency status with history
 */
public class CompanyResultsResponseResultsDataInsolvency: Codable {
    public var history: [CompanyResultsResponseResultsDataInsolvencyHistory?]?
    public init(
        history: [CompanyResultsResponseResultsDataInsolvencyHistory?]?
    ) {
        self.history = history
    }
}

public class CompanyResultsResponseResultsDataInsolvencyHistory: Codable {
    public var reference: String?
    public var dateFrom: String?
    public var dateTo: String?
    public var court: CompanyResultsResponseResultsDataInsolvencyHistoryCourt?
    public var status: String?
    public var detailUrl: String?
    public init(
        reference: String?,
        dateFrom: String?,
        dateTo: String?,
        court: CompanyResultsResponseResultsDataInsolvencyHistoryCourt?,
        status: String?,
        detailUrl: String?
    ) {
        self.reference = reference
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.court = court
        self.status = status
        self.detailUrl = detailUrl
    }
}

public class CompanyResultsResponseResultsDataInsolvencyHistoryCourt: Codable {
    public var name: String?
    public init(
        name: String?
    ) {
        self.name = name
    }
}

public class CompanyResultsResponseResultsDataBusinessPremises: Codable {
    public var label: String?
    public var address: CompanyResultsResponseResultsDataBusinessPremisesAddress?
    public var activitySubjects: String?
    public init(
        label: String?,
        address: CompanyResultsResponseResultsDataBusinessPremisesAddress?,
        activitySubjects: String?
    ) {
        self.label = label
        self.address = address
        self.activitySubjects = activitySubjects
    }
}

public class CompanyResultsResponseResultsDataBusinessPremisesAddress: Codable {
    public var full: String?
    public init(
        full: String?
    ) {
        self.full = full
    }
}

public class CompanyResultsResponseResultsDataAuthority: Codable {
    public var name: String?
    public var members: [CompanyResultsResponseResultsDataAuthorityMembers?]?
    public var decisions: [String?]?
    public init(
        name: String?,
        members: [CompanyResultsResponseResultsDataAuthorityMembers?]?,
        decisions: [String?]?
    ) {
        self.name = name
        self.members = members
        self.decisions = decisions
    }
}

public class CompanyResultsResponseResultsDataAuthorityMembers: Codable {
    public var name: String?
    public var address: CompanyResultsResponseResultsDataAuthorityMembersAddress?
    public var addressOficial: LocationOficial?
    public var function: String?
    public var birthDate: String?
    public var registrationNumber: Double?
    public init(
        name: String?,
        address: CompanyResultsResponseResultsDataAuthorityMembersAddress?,
        addressOficial: LocationOficial?,
        function: String?,
        birthDate: String?,
        registrationNumber: Double?
    ) {
        self.name = name
        self.address = address
        self.addressOficial = addressOficial
        self.function = function
        self.birthDate = birthDate
        self.registrationNumber = registrationNumber
    }
}

public class CompanyResultsResponseResultsDataAuthorityMembersAddress: Codable {
    public var data: LocationData?
    public init(
        data: LocationData?
    ) {
        self.data = data
    }
}

/**
 * Company's funding
 */
public class CompanyResultsResponseResultsDataCapital: Codable {
    public var value: CompanyResultsResponseResultsDataCapitalValue?
    public var shareholders: [CompanyResultsResponseResultsDataCapitalShareholders?]?
    public var stocks: [String?]?
    public init(
        value: CompanyResultsResponseResultsDataCapitalValue?,
        shareholders: [CompanyResultsResponseResultsDataCapitalShareholders?]?,
        stocks: [String?]?
    ) {
        self.value = value
        self.shareholders = shareholders
        self.stocks = stocks
    }
}

public class CompanyResultsResponseResultsDataCapitalValue: Codable {
    public var amount: String?
    public var currency: String?
    public init(
        amount: String?,
        currency: String?
    ) {
        self.amount = amount
        self.currency = currency
    }
}

public class CompanyResultsResponseResultsDataCapitalShareholders: Codable {
    public var shareholder: String?
    public var share: CompanyResultsResponseResultsDataCapitalShareholdersShare?
    public var info: [String?]?
    public init(
        shareholder: String?,
        share: CompanyResultsResponseResultsDataCapitalShareholdersShare?,
        info: [String?]?
    ) {
        self.shareholder = shareholder
        self.share = share
        self.info = info
    }
}

public class CompanyResultsResponseResultsDataCapitalShareholdersShare: Codable {
    public var amount: String?
    public var currency: String?
    public var percent: String?
    public var percentPaid: String?
    public init(
        amount: String?,
        currency: String?,
        percent: String?,
        percentPaid: String?
    ) {
        self.amount = amount
        self.currency = currency
        self.percent = percent
        self.percentPaid = percentPaid
    }
}

public class CompanyResultsResponseResultsDataTradeLicences: Codable {
    public var type: String?
    public var name: String?
    public var valid: CompanyResultsResponseResultsDataTradeLicencesValid?
    public var interrupted: CompanyResultsResponseResultsDataTradeLicencesInterrupted?
    public var responsiblePerson: String?
    public var activitySubject: [String?]?
    public init(
        type: String?,
        name: String?,
        valid: CompanyResultsResponseResultsDataTradeLicencesValid?,
        interrupted: CompanyResultsResponseResultsDataTradeLicencesInterrupted?,
        responsiblePerson: String?,
        activitySubject: [String?]?
    ) {
        self.type = type
        self.name = name
        self.valid = valid
        self.interrupted = interrupted
        self.responsiblePerson = responsiblePerson
        self.activitySubject = activitySubject
    }
}

public class CompanyResultsResponseResultsDataTradeLicencesValid: Codable {
    public var from: String?
    public var fromText: String?
    public var to: String?
    public var toText: String?
    public init(
        from: String?,
        fromText: String?,
        to: String?,
        toText: String?
    ) {
        self.from = from
        self.fromText = fromText
        self.to = to
        self.toText = toText
    }
}

/**
 * Dates of interuption.
 */
public class CompanyResultsResponseResultsDataTradeLicencesInterrupted: Codable {
    public var from: String?
    public var to: String?
    public init(
        from: String?,
        to: String?
    ) {
        self.from = from
        self.to = to
    }
}

/**
 * Vat payer information.
 */
public class CompanyResultsResponseResultsDataVat: Codable {
    public var status: CompanyResultsResponseResultsDataVatStatus?
    public var reliability: CompanyResultsResponseResultsDataVatReliability?
    public var bankAccounts: [CompanyResultsResponseResultsDataVatBankAccounts?]?
    public var history: [CompanyResultsResponseResultsDataVatHistory?]?
    public init(
        status: CompanyResultsResponseResultsDataVatStatus?,
        reliability: CompanyResultsResponseResultsDataVatReliability?,
        bankAccounts: [CompanyResultsResponseResultsDataVatBankAccounts?]?,
        history: [CompanyResultsResponseResultsDataVatHistory?]?
    ) {
        self.status = status
        self.reliability = reliability
        self.bankAccounts = bankAccounts
        self.history = history
    }
}

/**
 * Vat current status. Payer, non payer and subject. Subject means the company is a VAT payer only for non domestic transactions (identifikovaná osoba).
 */
public enum CompanyResultsResponseResultsDataVatStatus: String, Codable, UnknownCaseRepresentable {
    case PAYER = "payer"

    case NONPAYER = "nonpayer"

    case SUBJECT = "subject"
    // Fallback case
    case unknown
}

/**
 * Reliability of the VAT payer.
 */
public class CompanyResultsResponseResultsDataVatReliability: Codable {
    public var reliable: Bool?
    public var unreliableFrom: String?
    public init(
        reliable: Bool?,
        unreliableFrom: String?
    ) {
        self.reliable = reliable
        self.unreliableFrom = unreliableFrom
    }
}

public class CompanyResultsResponseResultsDataVatBankAccounts: Codable {
    public var number: String?
    public init(
        number: String?
    ) {
        self.number = number
    }
}

public class CompanyResultsResponseResultsDataVatHistory: Codable {
    public var vatNumber: String?
    public var registrationType: String?
    public var validFrom: String?
    public var validTo: String?
    public var isGroupRegistration: Bool?
    public init(
        vatNumber: String?,
        registrationType: String?,
        validFrom: String?,
        validTo: String?,
        isGroupRegistration: Bool?
    ) {
        self.vatNumber = vatNumber
        self.registrationType = registrationType
        self.validFrom = validFrom
        self.validTo = validTo
        self.isGroupRegistration = isGroupRegistration
    }
}
