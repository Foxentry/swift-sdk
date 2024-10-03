/**
 * Foxentry API reference
 *
 * The version of the OpenAPI document: 2.0
 * Contact: info@foxentry.com
 *
 * NOTE: This file is auto generated.
 * Do not edit the file manually.
 */ import Foundation

public class FoxentrySdk {
    public let config: Config
    public let companyService: CompanyService
    public let emailService: EmailService
    public let locationService: LocationService
    public let nameService: NameService
    public let phoneService: PhoneService
    public init(config: Config) {
        self.config = config
        companyService = CompanyService(config: config)
        emailService = EmailService(config: config)
        locationService = LocationService(config: config)
        nameService = NameService(config: config)
        phoneService = PhoneService(config: config)
    }
}
