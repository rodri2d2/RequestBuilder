# RequestBuilder
RequestBuilder is a Swift package designed to simplify and standardize the creation of URLRequest objects, making it easier to configure and use different API environments.

## Features

- Standards the creation of URLRequest objects.
- It makes it easy to set up different API environments (e.g., development and production).
- It provides a secure and typed way to define API routes and HTTP methods.
- Provides a simple way to standardise the models (DTO) for both requests and responses.

## Prerequisites

- iOS 16.0+ 
- Swift 5.5+

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/rodri2d2/RequestBuilder.git", .upToNextMajor(from: "1.0.0"))
]