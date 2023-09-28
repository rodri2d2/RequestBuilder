//
//  APIPathTests.swift
//  
//
//  Created by Rodrigo Candido on 28/9/23.
//

import XCTest
@testable import RequestBuilder

class APIPathTests: XCTestCase {

    func testCommonPathsNone() {
        // Given
        let path = CommonPaths.none
        
        // When
        let result = path.path
        
        // Then
        XCTAssertEqual(result, "")
    }
    
    func testCustomAPIPath() {
        // Given
        enum TestPaths: APIPath {
            case test
            var path: String {
                switch self {
                case .test:
                    return "testPath"
                }
            }
        }
        
        let path = TestPaths.test
        
        // When
        let result = path.path
        
        // Then
        XCTAssertEqual(result, "testPath")
    }
}


