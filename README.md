# RequestBuilder
RequestBuilder is a Swift package designed to simplify and standardize the creation of URLRequest objects, making it easier to configure and use different API environments.



## Backlog

### DONE
- [X] **APIMode**: API mode to switch between different environments.
- [X] **APIPath**: Create a way to define and manage API routes/endpoints.
- [X] **HTTP Methods**: Add support HTTP methods to create the request.
- [X] **Headers**: Provide a simple way to add and check headers to requests and responses.

### OPEN
- [ ] **Network Errors**: Defining and handling common network errors.
- [ ] **RequestBuilder**: Create the request builder to form the API requests.

### Future Improvements / Ideas
- [ ] **APIMode configuration**: Implement the ability to use a configuration file for APIMode.
- [ ] **Performance Optimisation**: Investigate and improve the performance of the framework.
- [ ] **Documentation and Samples**: Improve documentation and add more examples of use.
- [ ] **Research for APIPAth optimisation**: Try to find a better way to force developers to register their path before use.




## Features

- Standards the creation of URLRequest objects.
- It makes it easy to set up different API environments (e.g., development and production).
- It provides a secure and typed way to define API routes and HTTP methods.
- Provides a simple way to standardise the models (DTO) for both requests and responses.

## Prerequisites

- iOS 16.0+ 
- Swift 5.5+

## Installation (NOT READY YET TO INSTALL)

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/rodri2d2/RequestBuilder.git", .upToNextMajor(from: "XXX"))
]