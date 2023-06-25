//
//  BaseTestExtension.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 26/06/23.
//

import Foundation
import XCTest

extension BaseTest {
    
    func launchNotesApp() throws{
        BaseApp.setup(bundleIdentifier: "com.apple.Notes")
        let isAppLaunched = BaseApp.shared.launchApp()
        XCTAssertTrue(isAppLaunched, "Notes App Launch Failure")
    }
    
}
