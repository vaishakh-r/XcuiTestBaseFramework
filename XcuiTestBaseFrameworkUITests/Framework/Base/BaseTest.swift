//
//  BaseTest.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 22/06/23.
//

import Foundation
import XCTest


class BaseTest: XCTestCase {
    
    // called before each test method
    override func setUp() {
        print("setUp Called")
    }
    
    // called before each test class execution
    override class func setUp() {
        print("class func setUp Called")
    }
    
    // called after each test class execution
    override func tearDown() {
        print("teardown Called")

    }
    
    // called after all testcases in class executed
    override class func tearDown() {
        print("class func tearDown Called")

    }
    
//    func test01_call() {
//        print("Hello")
//    }
//    
//    func test02_call() {
//        print("Hello")
//    }
    
}

