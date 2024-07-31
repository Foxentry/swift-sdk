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

public class LocationNumber: Codable {
    public var part1: String!
    public var part1Number: String?
    public var part1Letter: String?
    public var part2: String!
    public var part2Number: String?
    public var part2Letter: String?
    public var full: String?
    public init(
        part1: String!,
        part1Number: String?,
        part1Letter: String?,
        part2: String!,
        part2Number: String?,
        part2Letter: String?,
        full: String?
    ) {
        self.part1 = part1
        self.part1Number = part1Number
        self.part1Letter = part1Letter
        self.part2 = part2
        self.part2Number = part2Number
        self.part2Letter = part2Letter
        self.full = full
    }
}
