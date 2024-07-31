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

public class LocationValidationResponse: Codable {
    public var result: LocationValidationResponseResult
    public var resultCorrected: LocationValidationResponseResultCorrected?
    public var suggestions: [LocationValidationResponseSuggestions?]?
    public init(
        result: LocationValidationResponseResult,
        resultCorrected: LocationValidationResponseResultCorrected?,
        suggestions: [LocationValidationResponseSuggestions?]?
    ) {
        self.result = result
        self.resultCorrected = resultCorrected
        self.suggestions = suggestions
    }
}

/**
 * Evaluation of the sent query.
 */
public class LocationValidationResponseResult: Codable {
    public var isValid: Bool!
    public var proposal: LocationValidationResponseResultProposal!
    public var data: LocationData
    public var errors: [LocationValidationResponseResultErrors?]?
    public init(
        isValid: Bool!,
        proposal: LocationValidationResponseResultProposal!,
        data: LocationData,
        errors: [LocationValidationResponseResultErrors?]?
    ) {
        self.isValid = isValid
        self.proposal = proposal
        self.data = data
        self.errors = errors
    }
}

public enum LocationValidationResponseResultErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxLocation(ErrorSyntaxLocation)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxLocation.self) {
            self = .errorSyntaxLocation(result)
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
                debugDescription: "Can't decode LocationValidationResponseResultErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxLocation(value):
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

    public class ErrorSyntaxLocation: Codable {
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
public enum LocationValidationResponseResultProposal: String, Codable, UnknownCaseRepresentable {
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
public class LocationValidationResponseResultCorrected: Codable {
    public var isValid: Bool
    public var data: LocationData
    public var errors: [LocationValidationResponseResultCorrectedErrors?]?
    public var fixes: [LocationValidationResponseResultCorrectedFixes?]?
    public init(
        isValid: Bool,
        data: LocationData,
        errors: [LocationValidationResponseResultCorrectedErrors?]?,
        fixes: [LocationValidationResponseResultCorrectedFixes?]?
    ) {
        self.isValid = isValid
        self.data = data
        self.errors = errors
        self.fixes = fixes
    }
}

public enum LocationValidationResponseResultCorrectedErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxLocation(ErrorSyntaxLocation)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxLocation.self) {
            self = .errorSyntaxLocation(result)
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
                debugDescription: "Can't decode LocationValidationResponseResultCorrectedErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxLocation(value):
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

    public class ErrorSyntaxLocation: Codable {
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

public enum LocationValidationResponseResultCorrectedFixes: Codable {
    case fixFormatGlobal(FixFormatGlobal)
    case fixSyntaxGlobal(FixSyntaxGlobal)
    case fixSyntaxLocation(FixSyntaxLocation)
    case fixValueGlobal(FixValueGlobal)
    case fixValueLocation(FixValueLocation)
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
        if let result = try? container.decode(FixSyntaxLocation.self) {
            self = .fixSyntaxLocation(result)
            return
        }
        if let result = try? container.decode(FixValueGlobal.self) {
            self = .fixValueGlobal(result)
            return
        }
        if let result = try? container.decode(FixValueLocation.self) {
            self = .fixValueLocation(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode LocationValidationResponseResultCorrectedFixes"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .fixFormatGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxLocation(value):
            try value.encode(to: encoder)
        case let .fixValueGlobal(value):
            try value.encode(to: encoder)
        case let .fixValueLocation(value):
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

    public class FixSyntaxLocation: Codable {
        public init(
        ) {}
    }

    public class FixValueGlobal: Codable {
        public init(
        ) {}
    }

    public class FixValueLocation: Codable {
        public init(
        ) {}
    }
}

public class LocationValidationResponseSuggestions: Codable {
    public var isValid: Bool?
    public var data: LocationData
    public var fixes: [LocationValidationResponseSuggestionsFixes?]?
    public var errors: [LocationValidationResponseSuggestionsErrors?]?
    public init(
        isValid: Bool?,
        data: LocationData,
        fixes: [LocationValidationResponseSuggestionsFixes?]?,
        errors: [LocationValidationResponseSuggestionsErrors?]?
    ) {
        self.isValid = isValid
        self.data = data
        self.fixes = fixes
        self.errors = errors
    }
}

public enum LocationValidationResponseSuggestionsFixes: Codable {
    case fixFormatGlobal(FixFormatGlobal)
    case fixSyntaxGlobal(FixSyntaxGlobal)
    case fixSyntaxLocation(FixSyntaxLocation)
    case fixValueGlobal(FixValueGlobal)
    case fixValueLocation(FixValueLocation)
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
        if let result = try? container.decode(FixSyntaxLocation.self) {
            self = .fixSyntaxLocation(result)
            return
        }
        if let result = try? container.decode(FixValueGlobal.self) {
            self = .fixValueGlobal(result)
            return
        }
        if let result = try? container.decode(FixValueLocation.self) {
            self = .fixValueLocation(result)
            return
        }
        throw DecodingError.dataCorrupted(
            DecodingError.Context(
                codingPath: [],
                debugDescription: "Can't decode LocationValidationResponseSuggestionsFixes"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .fixFormatGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .fixSyntaxLocation(value):
            try value.encode(to: encoder)
        case let .fixValueGlobal(value):
            try value.encode(to: encoder)
        case let .fixValueLocation(value):
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

    public class FixSyntaxLocation: Codable {
        public init(
        ) {}
    }

    public class FixValueGlobal: Codable {
        public init(
        ) {}
    }

    public class FixValueLocation: Codable {
        public init(
        ) {}
    }
}

public enum LocationValidationResponseSuggestionsErrors: Codable {
    case errorSyntaxGlobal(ErrorSyntaxGlobal)
    case errorSyntaxLocation(ErrorSyntaxLocation)
    case errorFormatGlobal(ErrorFormatGlobal)
    case errorValueGlobal(ErrorValueGlobal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let result = try? container.decode(ErrorSyntaxGlobal.self) {
            self = .errorSyntaxGlobal(result)
            return
        }
        if let result = try? container.decode(ErrorSyntaxLocation.self) {
            self = .errorSyntaxLocation(result)
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
                debugDescription: "Can't decode LocationValidationResponseSuggestionsErrors"
            )
        )
    }

    public func encode(to encoder: any Encoder) throws {
        switch self {
        case let .errorSyntaxGlobal(value):
            try value.encode(to: encoder)
        case let .errorSyntaxLocation(value):
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

    public class ErrorSyntaxLocation: Codable {
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
