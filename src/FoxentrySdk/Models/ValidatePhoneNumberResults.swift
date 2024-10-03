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

public class ValidatePhoneNumberResults: Codable {
    public var result: ValidatePhoneNumberResultsResult
    public var resultCorrected: ValidatePhoneNumberResultsResultCorrected?
    public var suggestions: [ValidatePhoneNumberResultsSuggestions?]
    public init(
        result: ValidatePhoneNumberResultsResult,
        resultCorrected: ValidatePhoneNumberResultsResultCorrected?,
        suggestions: [ValidatePhoneNumberResultsSuggestions?]
    ) {
        self.result = result
        self.resultCorrected = resultCorrected
        self.suggestions = suggestions
    }
}

/**
 * Evaluation of the sent query.
 */
public class ValidatePhoneNumberResultsResult: Codable {
    public var isValid: Bool!
    public var proposal: ValidatePhoneNumberResultsResultProposal!
    public var data: ValidatePhoneNumberData
    public var errors: [ValidatePhoneNumberResultsResultErrors?]
    public init(
        isValid: Bool!,
        proposal: ValidatePhoneNumberResultsResultProposal!,
        data: ValidatePhoneNumberData,
        errors: [ValidatePhoneNumberResultsResultErrors?]
    ) {
        self.isValid = isValid
        self.proposal = proposal
        self.data = data
        self.errors = errors
    }
}

public enum ValidatePhoneNumberResultsResultErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxPhone(ErrorSyntaxPhone)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    case errorValuePhone(ErrorValuePhone)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxPhone.self) {
            self = .errorSyntaxPhone(result)
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
        if let result = try? container.decode(ErrorValuePhone.self) {
            self = .errorValuePhone(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidatePhoneNumberResultsResultErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxPhone(value):
            try value.encode(to: encoder)
        case let .errorFormatGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueGlobal(value):
            try value.encode(to: encoder)
        case let .errorValuePhone(value):
            try value.encode(to: encoder)
        }
    }

    public class ErrorSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorSyntaxPhone: Codable {
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

    public class ErrorValuePhone: Codable {
        public init(
        ) {}
    }
}

/**
 * Proposed solution by Foxentry how you should process the response in your form or application.
 */
public enum ValidatePhoneNumberResultsResultProposal: String, Codable, UnknownCaseRepresentable {
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
public class ValidatePhoneNumberResultsResultCorrected: Codable {
    public var isValid: Bool?
    public var data: ValidatePhoneNumberData?
    public var errors: [ValidatePhoneNumberResultsResultCorrectedErrors?]?
    public var fixes: [ValidatePhoneNumberResultsResultCorrectedFixes?]?
    public init(
        isValid: Bool?,
        data: ValidatePhoneNumberData?,
        errors: [ValidatePhoneNumberResultsResultCorrectedErrors?]?,
        fixes: [ValidatePhoneNumberResultsResultCorrectedFixes?]?
    ) {
        self.isValid = isValid
        self.data = data
        self.errors = errors
        self.fixes = fixes
    }
}

public enum ValidatePhoneNumberResultsResultCorrectedErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxPhone(ErrorSyntaxPhone)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    case errorValuePhone(ErrorValuePhone)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxPhone.self) {
            self = .errorSyntaxPhone(result)
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
        if let result = try? container.decode(ErrorValuePhone.self) {
            self = .errorValuePhone(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidatePhoneNumberResultsResultCorrectedErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxPhone(value):
            try value.encode(to: encoder)
        case let .errorFormatGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueGlobal(value):
            try value.encode(to: encoder)
        case let .errorValuePhone(value):
            try value.encode(to: encoder)
        }
    }

    public class ErrorSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorSyntaxPhone: Codable {
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

    public class ErrorValuePhone: Codable {
        public init(
        ) {}
    }
}

public enum ValidatePhoneNumberResultsResultCorrectedFixes: Codable {
    case fixFormatGlobal(FixFormatGlobal)
    case fixSyntaxGlobal(FixSyntaxGlobal)
    case fixSyntaxPhone(FixSyntaxPhone)
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
        if let result = try? container.decode(FixSyntaxPhone.self) {
            self = .fixSyntaxPhone(result)
            return
        }
        if let result = try? container.decode(FixValueGlobal.self) {
            self = .fixValueGlobal(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidatePhoneNumberResultsResultCorrectedFixes"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .fixFormatGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxPhone(value):
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

    public class FixSyntaxPhone: Codable {
        public init(
        ) {}
    }

    public class FixValueGlobal: Codable {
        public init(
        ) {}
    }
}

public class ValidatePhoneNumberResultsSuggestions: Codable {
    public var isValid: Bool?
    public var data: ValidatePhoneNumberData?
    public var errors: [ValidatePhoneNumberResultsSuggestionsErrors?]?
    public var fixes: [ValidatePhoneNumberResultsSuggestionsFixes?]?
    public init(
        isValid: Bool?,
        data: ValidatePhoneNumberData?,
        errors: [ValidatePhoneNumberResultsSuggestionsErrors?]?,
        fixes: [ValidatePhoneNumberResultsSuggestionsFixes?]?
    ) {
        self.isValid = isValid
        self.data = data
        self.errors = errors
        self.fixes = fixes
    }
}

public enum ValidatePhoneNumberResultsSuggestionsErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxPhone(ErrorSyntaxPhone)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    case errorValuePhone(ErrorValuePhone)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxPhone.self) {
            self = .errorSyntaxPhone(result)
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
        if let result = try? container.decode(ErrorValuePhone.self) {
            self = .errorValuePhone(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidatePhoneNumberResultsSuggestionsErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxPhone(value):
            try value.encode(to: encoder)
        case let .errorFormatGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueGlobal(value):
            try value.encode(to: encoder)
        case let .errorValuePhone(value):
            try value.encode(to: encoder)
        }
    }

    public class ErrorSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorSyntaxPhone: Codable {
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

    public class ErrorValuePhone: Codable {
        public init(
        ) {}
    }
}

public enum ValidatePhoneNumberResultsSuggestionsFixes: Codable {
    case fixFormatGlobal(FixFormatGlobal)
    case fixSyntaxGlobal(FixSyntaxGlobal)
    case fixSyntaxPhone(FixSyntaxPhone)
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
        if let result = try? container.decode(FixSyntaxPhone.self) {
            self = .fixSyntaxPhone(result)
            return
        }
        if let result = try? container.decode(FixValueGlobal.self) {
            self = .fixValueGlobal(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidatePhoneNumberResultsSuggestionsFixes"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .fixFormatGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxPhone(value):
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

    public class FixSyntaxPhone: Codable {
        public init(
        ) {}
    }

    public class FixValueGlobal: Codable {
        public init(
        ) {}
    }
}
