//
//  HomeTest.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 26/06/23.
//

import Foundation
import XCTest

class HomeTest: BaseTest {
    
    func test01_verifyNotesAppLaunched() throws{
        try launchNotesApp()
        print(BaseApp.app.debugDescription)
        XCTAssertTrue(HomeScreen().verifyHomeScreenLaunched(), "Home Screen Launched")
        HomeScreen().clickNewFolderButton()
        sleep(1)
        print(BaseApp.app.debugDescription)
        sleep(1)
    }
    
}
