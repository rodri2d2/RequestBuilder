//
//  HTTPHeaders.swift
//  
//
//  Created by Rodrigo  Candido on 3/10/23.
//

import Foundation
/** Designed to facilitate the creation and management of HTTP headers.
 This struct provides simple methods to add standard and custom headers.

 Usage:
 ```swift
 var headers = HTTPHeaders()
headers.addHeader(for: .contentType, contentType: .json)
 headers.addHeader(field: .authorization, value: "Bearer miToken")
print(headers.allHeaders)
 ```
 - Note: Supports both custom and standard headers.
*/
public struct HTTPHeaders {
    
    /// An internal dictionary to store the headers.
    private var headers: [HTTPHeaderField: String] = [:]
    
    /// Returns all headers in a dictionary format of [String: String].
    public var allHeaders: [String: String] {
        return headers.reduce(into: [:]) { $0[$1.key.rawValue] = $1.value }
    }

    /// Initializes a new instance of `HTTPHeaders`.
    /// - Parameter defaultHeaders: If `true`, includes default headers (`Content-Type: application/json`). Default is `true`.
    public init(defaultHeaders: Bool = true) {
        if defaultHeaders {
            self.headers[.contentType] = ContentType.json.description
        }
    }
    
    /// Adds a specific content type to the headers.
    /// - Parameters:
    ///   - field: The header field for which the content type is being specified.
    ///   - contentType: The content type to add.
    public mutating func addHeader(for field: HTTPHeaderField, contentType: ContentType) {
        headers[field] = contentType.description
    }
    
    /// Adds a custom header with a specified value.
    /// - Parameters:
    ///   - field: The header field to add.
    ///   - value: The value of the header.
    public mutating func addHeader(field: HTTPHeaderField, value: String) {
        headers[field] = value
    }
    
    /// Allows getting and setting header values using subscript syntax.
    /// - Parameter field: The header field to access or modify.
    public subscript(field: HTTPHeaderField) -> String? {
        get { return headers[field] }
        set { headers[field] = newValue }
    }
}
