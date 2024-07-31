<div align='center' class='text-center'>
  <img alt='' src='./assets/logo.webp' width='200' />
  <h1 align='center' class='text-center'>FoxentrySdk</h1>
</div>

<div align='center' class='text-center'>
  <a aria-label='Version' href='#'>
    <img alt='' src='https://img.shields.io/badge/version-1.0.0-blue' />
  </a>
  <a aria-label='License' href='https://opensource.org/licenses/MIT'>
    <img alt='' src='https://img.shields.io/badge/License-MIT-blue.svg' />
  </a>
</div>

Welcome to our FoxentrySdk. We are committed to providing you with the best SDK services experience possible. Please use our step-by-step instructions to become familiar with how to use our SDK.

- Current API version: 2.0
- Current package version: 1.0.0

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Frequently Asked Questions (FAQ)](#frequently-asked-questions-faq)

## Requirements

- iOS 13.0+ / macOS 10.15+ / tvOS 13.0+ / watchOS 6.0+ / visionOS 1.0+
- Swift 5.0+
- Foxentry.com API credentials

## Installation

#### Swift Package Manager

- File > Swift Packages > Add Package Dependency
- Add `FoxentrySdk repository URL`

## Usage

In case that you successfully installed our FoxentrySdk please execute this code:

```swift
import FoxentrySdk

let config = Config(token: "YOUR_API_KEY")
let sdk = FoxentrySdk(config: config)

do {
    let response = try await sdk.companyService.validateCompanyData(/* query parameters */)
    // Use response data
} catch {
    // Handle errors
}
```

## Features

Kindly note that every URI is relative to _https://api.foxentry.com_.

The table displays all features categorized based on their specific purposes.

| Class                      | Method                   | HTTP request                | Description            |
| -------------------------- | ------------------------ | --------------------------- | ---------------------- |
| _FoxentrySdk.Sdk.Company_  | **ValidateCompanyData**  | **POST** /company/validate  | Validate company data  |
| _FoxentrySdk.Sdk.Company_  | **CompanySearch**        | **POST** /company/search    | Search company         |
| _FoxentrySdk.Sdk.Company_  | **GetCompanyData**       | **POST** /company/get       | Get company data       |
| _FoxentrySdk.Sdk.Email_    | **ValidateEmail**        | **POST** /email/validate    | Validate email         |
| _FoxentrySdk.Sdk.Email_    | **EmailSearch**          | **POST** /email/search      | Search email           |
| _FoxentrySdk.Sdk.Location_ | **LocationValidation**   | **POST** /location/validate | Validate location data |
| _FoxentrySdk.Sdk.Location_ | **LocationSearch**       | **POST** /location/search   | Search location        |
| _FoxentrySdk.Sdk.Location_ | **LocationGet**          | **POST** /location/get      | Get location data      |
| _FoxentrySdk.Sdk.Location_ | **LocationLocalization** | **POST** /location/localize | Localization           |
| _FoxentrySdk.Sdk.Name_     | **NameValidation**       | **POST** /name/validate     | Validate name data     |
| _FoxentrySdk.Sdk.Phone_    | **ValidatePhoneNumber**  | **POST** /phone/validate    | Validate phone number  |

## Contributing

To learn more about the possibility of contributing to the subsequent development of this SDK, please visit our [contributing page](./CONTRIBUTING.md). Kindly note that contributions are limited by a unique set of rules in order to ensure clarity.

## License

Please refer to the [license page](./LICENSE) for more information about the license type and the corresponding terms of use.

## Contact

We kindly request that you direct all questions to our support email:

- [info@foxentry.com](mailto:info@foxentry.com)

## Frequently Asked Questions (FAQ)
