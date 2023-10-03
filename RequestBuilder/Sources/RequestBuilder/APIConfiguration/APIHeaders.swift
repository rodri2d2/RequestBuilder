//
//  APIHeaders.swift
//
//
//  Created by Rodrigo  Candido on 2/10/23.
//

import Foundation

/// `HTTPHeaderField` lists the most common HTTP header fields.
public enum HTTPHeaderField: String {
    
    /// `Authorization` field contains the credentials to authenticate the client on the server.
    case authentication = "Authorization"
    
    /// `Content-Type` field indicates the media type of the resource or data.
    case contentType = "Content-Type"
    
    /// `Accept` field indicates which media types are acceptable for the response.
    case acceptType = "Accept"
    
    /// `Accept-Encoding` field indicates which content encodings are acceptable in the response.
    case acceptEncoding = "Accept-Encoding"
    
}

/// Represents common content types that can be used in HTTP headers.
public enum ContentType: CustomStringConvertible {
    
    /// Indicates that the content is of type JSON.
    /// It is commonly used for data exchange in RESTful APIs.
    case json
    
    /// Indicates that the content is encoded as a form.
    /// This type is commonly used when data is submitted from a web form.
    case formURLEncoded
    
    /// Used to transmit an authentication token.
    case bearer(token: String)
    
    public var description: String {
        switch self {
        case .json:
            return "application/json"
        case .formURLEncoded:
            return "application/x-www-form-urlencoded"
        case .bearer(let token):
            return "Bearer \(token)"
        }
    }
}
