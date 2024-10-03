import Foundation

public protocol UnknownCaseRepresentable: RawRepresentable, CaseIterable where RawValue: Equatable {
    static var unknown: Self { get }
}

public extension UnknownCaseRepresentable {
    init(rawValue: RawValue) {
        if let value = Self.allCases.first(where: { $0.rawValue == rawValue }) {
            self = value
        } else {
            self = .unknown
        }
    }

    static var allKnownCases: [Self] {
        allCases.filter { $0 != self.unknown }
    }

    static func hasRespectiveCase(for rawValue: RawValue) -> Bool {
        respectiveCase(for: rawValue) != nil
    }

    static func respectiveCase(for rawValue: RawValue) -> Self? {
        allCases.first(where: { $0.rawValue == rawValue })
    }
}
