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

public class ValidateEmailResponse: Codable {
    public var result: ValidateEmailResponseResult
    public var resultCorrected: ValidateEmailResponseResultCorrected?
    public var suggestions: [ValidateEmailResponseSuggestions?]?
    public init(
        result: ValidateEmailResponseResult,
        resultCorrected: ValidateEmailResponseResultCorrected?,
        suggestions: [ValidateEmailResponseSuggestions?]?
    ) {
        self.result = result
        self.resultCorrected = resultCorrected
        self.suggestions = suggestions
    }
}

/**
 * Evaluation of the sent query.
 */
public class ValidateEmailResponseResult: Codable {
    public var isValid: Bool!
    public var proposal: ValidateEmailResponseResultProposal
    public var data: EmailData
    public var flags: EmailFlags?
    public var errors: [ValidateEmailResponseResultErrors?]?
    public init(
        isValid: Bool!,
        proposal: ValidateEmailResponseResultProposal,
        data: EmailData,
        flags: EmailFlags?,
        errors: [ValidateEmailResponseResultErrors?]?
    ) {
        self.isValid = isValid
        self.proposal = proposal
        self.data = data
        self.flags = flags
        self.errors = errors
    }
}

public enum ValidateEmailResponseResultErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxEmail(ErrorSyntaxEmail)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    case errorValueEmail(ErrorValueEmail)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxEmail.self) {
            self = .errorSyntaxEmail(result)
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
        if let result = try? container.decode(ErrorValueEmail.self) {
            self = .errorValueEmail(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidateEmailResponseResultErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxEmail(value):
            try value.encode(to: encoder)
        case let .errorFormatGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueEmail(value):
            try value.encode(to: encoder)
        }
    }

    public class ErrorSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorSyntaxEmail: Codable {
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

    public class ErrorValueEmail: Codable {
        public init(
        ) {}
    }
}

/**
 * Proposed solution by Foxentry how you should process the response in your form or application.
 */
public enum ValidateEmailResponseResultProposal: String, Codable, UnknownCaseRepresentable {
    case VALID = "valid"

    case VALID_WITH_SUGGESTION = "validWithSuggestion"

    case INVALID = "invalid"

    case INVALID_WITH_CORRECTION = "invalidWithCorrection"

    case INVALID_WITH_PARTIAL_CORRECTION = "invalidWithPartialCorrection"

    case INVALID_WITH_SUGGESTION = "invalidWithSuggestion"

    case INVALID_WITH_CORRECTION_WITH_SUGGESTION = "invalidWithCorrectionWithSuggestion"

    case UNKNOWN_WITH_CORRECTION = "unknownWithCorrection"

    case UNKNOWN_WITH_PARTIAL_CORRECTION = "unknownWithPartialCorrection"
    // Fallback case
    case unknown
}

/**
 * Corrected version of the sent query.
 */
public class ValidateEmailResponseResultCorrected: Codable {
    public var isValid: Bool
    public var data: EmailData?
    public var flags: EmailFlags?
    public var fixes: [ValidateEmailResponseResultCorrectedFixes?]?
    public init(
        isValid: Bool,
        data: EmailData?,
        flags: EmailFlags?,
        fixes: [ValidateEmailResponseResultCorrectedFixes?]?
    ) {
        self.isValid = isValid
        self.data = data
        self.flags = flags
        self.fixes = fixes
    }
}

public enum ValidateEmailResponseResultCorrectedFixes: Codable {
    case fixFormatGlobal(FixFormatGlobal)
    case fixSyntaxGlobal(FixSyntaxGlobal)
    case fixSyntaxEmail(FixSyntaxEmail)
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
        if let result = try? container.decode(FixSyntaxEmail.self) {
            self = .fixSyntaxEmail(result)
            return
        }
        if let result = try? container.decode(FixValueGlobal.self) {
            self = .fixValueGlobal(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidateEmailResponseResultCorrectedFixes"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .fixFormatGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxEmail(value):
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

    public class FixSyntaxEmail: Codable {
        public init(
        ) {}
    }

    public class FixValueGlobal: Codable {
        public init(
        ) {}
    }
}

public class ValidateEmailResponseSuggestions: Codable {
    public var isValid: Bool?
    public var data: EmailData?
    public var flags: EmailFlags?
    public var fixes: [EmailFixes]?
    public var errors: [ValidateEmailResponseSuggestionsErrors?]?
    public init(
        isValid: Bool?,
        data: EmailData?,
        flags: EmailFlags?,
        fixes: [EmailFixes]?,
        errors: [ValidateEmailResponseSuggestionsErrors?]?
    ) {
        self.isValid = isValid
        self.data = data
        self.flags = flags
        self.fixes = fixes
        self.errors = errors
    }
}

public enum ValidateEmailResponseSuggestionsErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxEmail(ErrorSyntaxEmail)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    case errorValueEmail(ErrorValueEmail)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxEmail.self) {
            self = .errorSyntaxEmail(result)
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
        if let result = try? container.decode(ErrorValueEmail.self) {
            self = .errorValueEmail(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode ValidateEmailResponseSuggestionsErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxEmail(value):
            try value.encode(to: encoder)
        case let .errorFormatGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueGlobal(value):
            try value.encode(to: encoder)
        case let .errorValueEmail(value):
            try value.encode(to: encoder)
        }
    }

    public class ErrorSyntaxGlobal: Codable {
        public init(
        ) {}
    }

    public class ErrorSyntaxEmail: Codable {
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

    public class ErrorValueEmail: Codable {
        public init(
        ) {}
    }
}
