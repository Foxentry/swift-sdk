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

public class NameValidationResults: Codable {
    public var result: NameValidationResultsResult
    public var resultCorrected: NameValidationResultsResultCorrected?
    public var suggestions: [NameValidationResultsSuggestions?]
    public init(
        result: NameValidationResultsResult,
        resultCorrected: NameValidationResultsResultCorrected?,
        suggestions: [NameValidationResultsSuggestions?]
    ) {
        self.result = result
        self.resultCorrected = resultCorrected
        self.suggestions = suggestions
    }
}

/**
 * Evaluation of the sent query.
 */
public class NameValidationResultsResult: Codable {
    public var isValid: Bool
    public var proposal: NameValidationResultsResultProposal
    public var data: NameValidationResultsData
    public var details: [NameValidationResultsDetails]?
    public var errors: [NameValidationResultsResultErrors?]?
    public init(
        isValid: Bool,
        proposal: NameValidationResultsResultProposal,
        data: NameValidationResultsData,
        details: [NameValidationResultsDetails]?,
        errors: [NameValidationResultsResultErrors?]?
    ) {
        self.isValid = isValid
        self.proposal = proposal
        self.data = data
        self.details = details
        self.errors = errors
    }
}

public enum NameValidationResultsResultErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxName(ErrorSyntaxName)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    case errorValueName(ErrorValueName)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxName.self) {
            self = .errorSyntaxName(result)
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
        if let result = try? container.decode(ErrorValueName.self) {
            self = .errorValueName(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode NameValidationResultsResultErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxName(value):
            try value.encode(to: encoder)
        case let .errorFormatGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueName(value):
            try value.encode(to: encoder)
        }
    }

    public class ErrorSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorSyntaxName: Codable {
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

    public class ErrorValueName: Codable {
        public init(
        ) {}
    }
}

/**
 * Proposed solution by Foxentry how you should process the response in your form or application.
 */
public enum NameValidationResultsResultProposal: String, Codable, UnknownCaseRepresentable {
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
public class NameValidationResultsResultCorrected: Codable {
    public var isValid: Bool
    public var data: NameValidationResultsData
    public var details: [NameValidationResultsDetails]?
    public var fixes: [NameValidationResultsResultCorrectedFixes?]
    public init(
        isValid: Bool,
        data: NameValidationResultsData,
        details: [NameValidationResultsDetails]?,
        fixes: [NameValidationResultsResultCorrectedFixes?]
    ) {
        self.isValid = isValid
        self.data = data
        self.details = details
        self.fixes = fixes
    }
}

public enum NameValidationResultsResultCorrectedFixes: Codable {
    case fixFormatGlobal(FixFormatGlobal)
    case fixSyntaxGlobal(FixSyntaxGlobal)
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
        if let result = try? container.decode(FixValueGlobal.self) {
            self = .fixValueGlobal(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode NameValidationResultsResultCorrectedFixes"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .fixFormatGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxGlobal(value):
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

    public class FixValueGlobal: Codable {
        public init(
        ) {}
    }
}

/**
 * Alternatives suggested for the sent query.
 */
public class NameValidationResultsSuggestions: Codable {
    public var isValid: Bool
    public var data: NameValidationResultsData
    public var details: [NameValidationResultsDetails]?
    public var fixes: [NameValidationResultsSuggestionsFixes?]
    public init(
        isValid: Bool,
        data: NameValidationResultsData,
        details: [NameValidationResultsDetails]?,
        fixes: [NameValidationResultsSuggestionsFixes?]
    ) {
        self.isValid = isValid
        self.data = data
        self.details = details
        self.fixes = fixes
    }
}

public enum NameValidationResultsSuggestionsFixes: Codable {
    case fixFormatGlobal(FixFormatGlobal)
    case fixSyntaxGlobal(FixSyntaxGlobal)
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
        if let result = try? container.decode(FixValueGlobal.self) {
            self = .fixValueGlobal(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode NameValidationResultsSuggestionsFixes"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .fixFormatGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxGlobal(value):
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

    public class FixValueGlobal: Codable {
        public init(
        ) {}
    }
}
