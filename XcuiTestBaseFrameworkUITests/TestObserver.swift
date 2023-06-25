//
//  TestObserver.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 25/06/23.
//

/*
 Similar to Concept of Listeners used in other Testing Frameworks
 */

import XCTest

/*
 
 Functions are called in this order
 
 testBundleWillStart:
 — — — testSuiteWillStart:
 — — — — — — testCaseWillStart:
 — — — — — — testCase:didFailWithDescription:…
 — — — — — — testCaseDidFinish:
 — — — testSuite:didFailWithDescription:…
 — — — testSuiteDidFinish:
 testBundleDidFinish:
 
 
 */

/*
  In the Target , under info.plist file we need to add
  Principal class as $(PRODUCT_NAME).TestObserver
 
 This is what ties the TestObserver to the bundle
 
 */

public class TestObserver: NSObject, XCTestObservation {
    
    // This init is called up before any testbundle is called and before any test case is called
    override public init() {
        super.init()
        // We only addTestObserver to XCTestObservationCenter
        XCTestObservationCenter.shared.addTestObserver(self)
    }
    
    public func testBundleDidFinish(_ testBundle: Bundle) {
        // XCTestObservationCenter needs to remove observer
        XCTestObservationCenter.shared.removeTestObserver(self)
    }
    
    public func testCaseWillStart(_ testCase: XCTestCase) {
        print("Testcase name \(testCase.name) started")
    }
    
    public func testCaseDidFinish(_ testCase: XCTestCase) {
        print("Testcase name \(testCase.name) finished")
    }
    
}

