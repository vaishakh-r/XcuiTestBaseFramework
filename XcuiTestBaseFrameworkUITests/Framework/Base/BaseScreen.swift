//
//  BaseScreen.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 25/06/23.
//

import Foundation
import XCTest

class BaseScreen {
    
    public let app: XCUIApplication
    
    required init(app: XCUIApplication = BaseApp.app) {
        self.app = app
    }
    
}
