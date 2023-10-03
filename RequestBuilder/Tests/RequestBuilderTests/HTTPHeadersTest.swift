//
//  HTTPHeadersTest.swift
//  
//
//  Created by Rodrigo  Candido on 3/10/23.
//

import XCTest
@testable import RequestBuilder

class HTTPHeadersTests: XCTestCase {

    func testDefaultHeaders() {
        let headers = HTTPHeaders()
        XCTAssertEqual(headers[.contentType], "application/json")
    }

    func testBearerToken() {
        var headers = HTTPHeaders()
        headers.addHeader(for: .authentication, contentType: .bearer(token: "miTokenSecreto"))
        XCTAssertEqual(headers[.authentication], "Bearer miTokenSecreto")
    }

    func testAddCustomHeader() {
        var headers = HTTPHeaders(defaultHeaders: false)
        headers.addHeader(field: .contentType, value: "custom/type")
        XCTAssertEqual(headers[.contentType], "custom/type")
    }

    func testAllHeadersOutput() {
        var headers = HTTPHeaders()
        headers.addHeader(for: .authentication, contentType: .bearer(token: "miTokenSecreto"))
        headers.addHeader(for: .acceptEncoding, contentType: .formURLEncoded)
        let allHeaders = headers.allHeaders
        XCTAssertEqual(allHeaders["Content-Type"], "application/json")
        XCTAssertEqual(allHeaders["Authorization"], "Bearer miTokenSecreto")
        XCTAssertEqual(allHeaders["Accept-Encoding"],"application/x-www-form-urlencoded")
    }
}

