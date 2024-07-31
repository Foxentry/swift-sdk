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

public class ValidateCompanyDataResults: Codable {
    public var result: ValidateCompanyDataResultsResult
    public var resultCorrected: ValidateCompanyDataResultsResultCorrected?
    public var suggestions: [ValidateCompanyDataResultCorrected]
    public init(
        result: ValidateCompanyDataResultsResult,
        resultCorrected: ValidateCompanyDataResultsResultCorrected?,
        suggestions: [ValidateCompanyDataResultCorrected]
    ) {
        self.result = result
        self.resultCorrected = resultCorrected
        self.suggestions = suggestions
    }
}

/**
 * Evaluation of the sent query.
 */
public class ValidateCompanyDataResultsResult: CompanyResultsResponseResults {
    public var isValid: Bool?
    public var proposal: ValidateCompanyDataResultsResultProposal?
    public var errors: [ValidateCompanyDataResultsResultErrors?]?
    public init(
        isValid: Bool?,
        proposal: ValidateCompanyDataResultsResultProposal?,
        errors: [ValidateCompanyDataResultsResultErrors?]?,
        data: CompanyResultsResponseResultsData
    ) {
        self.isValid = isValid
        self.proposal = proposal
        self.errors = errors
        super.init(
            data: data
        )
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        isValid = try container.decodeIfPresent(Bool.self, forKey: .isValid)
        proposal = try container.decodeIfPresent(ValidateCompanyDataResultsResultProposal.self, forKey: .proposal)
        errors = try container.decodeIfPresent([ValidateCompanyDataResultsResultErrors?].self, forKey: .errors)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case isValid
        case proposal
        case errors
    }
}

public enum ValidateCompanyDataResultsResultErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxCompany(ErrorSyntaxCompany)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxCompany.self) {
            self = .errorSyntaxCompany(result)
            return
        }
        if let result = try? container.decode(ErrorFormatGlobal.self) {
            self = .errorFormatGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorValueGlobal.self) {
            self = .errorValueGlobal(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidateCompanyDataResultsResultErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxCompany(value):
            try value.encode(to: encoder)
        case let .errorFormatGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueGlobal(value):
            try value.encode(to: encoder)
        }
    }

    public class ErrorSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorSyntaxCompany: Codable {
        public init(
        ) {}
    }

    public class ErrorFormatGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorValueGlobal: Codable {
        public init(
        ) {}
    }
}

/**
 * Proposed solution by Foxentry how you should process the response in your form or application.
 */
public enum ValidateCompanyDataResultsResultProposal: String, Codable, UnknownCaseRepresentable {
    case VALID = "valid"

    case VALID_WITH_SUGGESTION = "validWithSuggestion"

    case INVALID = "invalid"

    case INVALID_WITH_CORRECTION = "invalidWithCorrection"

    case INVALID_WITH_PARTIAL_CORRECTION = "invalidWithPartialCorrection"

    case INVALID_WITH_SUGGESTION = "invalidWithSuggestion"

    case INVALID_WITH_CORRECTION_WITH_SUGGESTION = "invalidWithCorrectionWithSuggestion"
    // Fallback case
    case unknown
}

/**
 * Corrected version of the sent query.
 */
public class ValidateCompanyDataResultsResultCorrected: CompanyResultsResponseResults {
    public var isValid: Bool?
    public var errors: [ValidateCompanyDataResultsResultCorrectedErrors?]?
    public var fixes: [ValidateCompanyDataResultsResultCorrectedFixes?]?
    public init(
        isValid: Bool?,
        errors: [ValidateCompanyDataResultsResultCorrectedErrors?]?,
        fixes: [ValidateCompanyDataResultsResultCorrectedFixes?]?,
        data: CompanyResultsResponseResultsData
    ) {
        self.isValid = isValid
        self.errors = errors
        self.fixes = fixes
        super.init(
            data: data
        )
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        isValid = try container.decodeIfPresent(Bool.self, forKey: .isValid)
        errors = try container.decodeIfPresent([ValidateCompanyDataResultsResultCorrectedErrors?].self, forKey: .errors)
        fixes = try container.decodeIfPresent([ValidateCompanyDataResultsResultCorrectedFixes?].self, forKey: .fixes)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case isValid
        case errors
        case fixes
    }
}

public enum ValidateCompanyDataResultsResultCorrectedErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxCompany(ErrorSyntaxCompany)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxCompany.self) {
            self = .errorSyntaxCompany(result)
            return
        }
        if let result = try? container.decode(ErrorFormatGlobal.self) {
            self = .errorFormatGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorValueGlobal.self) {
            self = .errorValueGlobal(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidateCompanyDataResultsResultCorrectedErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxCompany(value):
            try value.encode(to: encoder)
        case let .errorFormatGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueGlobal(value):
            try value.encode(to: encoder)
        }
    }

    public class ErrorSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorSyntaxCompany: Codable {
        public init(
        ) {}
    }

    public class ErrorFormatGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorValueGlobal: Codable {
        public init(
        ) {}
    }
}

public enum ValidateCompanyDataResultsResultCorrectedFixes: Codable {
    case fixFormatGlobal(FixFormatGlobal)
    case fixSyntaxGlobal(FixSyntaxGlobal)
    case fixSyntaxCompany(FixSyntaxCompany)
    case fixValueGlobal(FixValueGlobal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(FixFormatGlobal.self) {
            self = .fixFormatGlobal(result)
            return
        }
        if let result = try? container.decode(FixSyntaxGlobal.self) {
            self = .fixSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(FixSyntaxCompany.self) {
            self = .fixSyntaxCompany(result)
            return
        }
        if let result = try? container.decode(FixValueGlobal.self) {
            self = .fixValueGlobal(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidateCompanyDataResultsResultCorrectedFixes"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .fixFormatGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxCompany(value):
            try value.encode(to: encoder)
        case let .fixValueGlobal(value):
            try value.encode(to: encoder)
        }
    }

    public class FixFormatGlobal: Codable {
        public init(
        ) {}
    }

    public class FixSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class FixSyntaxCompany: Codable {
        public init(
        ) {}
    }

    public class FixValueGlobal: Codable {
        public init(
        ) {}
    }
}
