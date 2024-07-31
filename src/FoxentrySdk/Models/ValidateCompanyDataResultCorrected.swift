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

public class ValidateCompanyDataResultCorrected: CompanyResultsResponseResults {
    public var isValid: Bool
    public var errors: [ValidateCompanyDataResultCorrectedErrors?]
    public var fixes: [ValidateCompanyDataResultCorrectedFixes?]
    public init(
        isValid: Bool,
        errors: [ValidateCompanyDataResultCorrectedErrors?],
        fixes: [ValidateCompanyDataResultCorrectedFixes?],
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
        isValid = try container.decode(Bool.self, forKey: .isValid)
        errors = try container.decode([ValidateCompanyDataResultCorrectedErrors?].self, forKey: .errors)
        fixes = try container.decode([ValidateCompanyDataResultCorrectedFixes?].self, forKey: .fixes)
        try super.init(from: decoder)
    }

    enum CodingKeys: String, CodingKey {
        case isValid
        case errors
        case fixes
    }
}

public enum ValidateCompanyDataResultCorrectedErrors: Codable {
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
                debugDescription: "Can't decode ValidateCompanyDataResultCorrectedErrors"
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

public enum ValidateCompanyDataResultCorrectedFixes: Codable {
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
                debugDescription: "Can't decode ValidateCompanyDataResultCorrectedFixes"
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
