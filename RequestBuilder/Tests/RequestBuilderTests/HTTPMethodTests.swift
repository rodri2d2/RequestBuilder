//
//  HTTPMethodTests.swift
//  
//
//  Created by Rodrigo  Candido on 2/10/23.
//

import XCTest
@testable import RequestBuilder

class HttpMethodTests: XCTestCase {
    
    func testGETMethod() {
        XCTAssertEqual(HTTPMethod.GET.rawValue, "GET")
    }
    
    func testPOSTMethod() {
        XCTAssertEqual(HTTPMethod.POST.rawValue, "POST")
    }

    func testPUTMethod() {
        XCTAssertEqual(HTTPMethod.PUT.rawValue, "PUT")
    }

    func testDELETEMethod() {
        XCTAssertEqual(HTTPMethod.DELETE.rawValue, "DELETE")
    }
}
