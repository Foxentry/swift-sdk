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

public class NameValidationResultsData: Codable {
    public var nameSurname: String!
    public var name: String
    public var surname: String!
    public var context: [String?]
    public var degreesBefore: [String?]
    public var degreesAfter: [String?]!
    public init(
        nameSurname: String!,
        name: String,
        surname: String!,
        context: [String?],
        degreesBefore: [String?],
        degreesAfter: [String?]!
    ) {
        self.nameSurname = nameSurname
        self.name = name
        self.surname = surname
        self.context = context
        self.degreesBefore = degreesBefore
        self.degreesAfter = degreesAfter
    }
}
