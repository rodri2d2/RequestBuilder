//
//  APIModeTests.swift
//  
//
//  Created by Rodrigo  Candido on 26/9/23.
//

import XCTest
@testable import RequestBuilder

class APIModeTests: XCTestCase {
    
    func testErrorOnUnconfiguredMode() {
        switch APIMode.prod.baseURL {
        case .success(_):
            XCTFail("It should not retrieve a URL for a non-configured mode.")
        case .failure(let error):
            XCTAssertEqual(error, APIModeError.apiModeNotConfigured)
        }
    }
    
    func testConfigureAndRetrieveURL() {
        let devURL = URL(string: "https://dev.example.com")!
        APIMode.configure(urls: [.dev: devURL])
        
        switch APIMode.dev.baseURL {
        case .success(let url):
            XCTAssertEqual(url, devURL)
        case .failure(_):
            XCTFail("It should not fail to retrieve a configured URL.")
        }
    }

    func testLocalizedErrorMessages() {
        let error = APIModeError.apiModeNotConfigured
        XCTAssertEqual(error.localizedDescription, "APIMode not configured.")
        XCTAssertEqual(error.failureReason, "APIMode not configured. Before request, bases URL must be configured.")
        XCTAssertEqual(error.recoverySuggestion, "Call APIModeconfigure(urls: [APIMode: URL]) first.")
    }

}
