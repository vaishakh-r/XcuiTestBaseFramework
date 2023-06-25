//
//  BaseApp.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 25/06/23.
//

import Foundation
import XCTest

class BaseApp {
    
    open var LAUNCH_WAIT_TIME: TimeInterval = 10.0
    static var app: XCUIApplication!
    static let shared = BaseApp()
    
    private init(){}
    
    class func setup(bundleIdentifier: String) {
        app = XCUIApplication(bundleIdentifier: bundleIdentifier)
    }
    
    func launchApp() -> Bool {
        BaseApp.app.launch()
        var isAppLaunched: Bool = BaseApp.app.wait(for: .runningForeground, timeout: LAUNCH_WAIT_TIME)
        return isAppLaunched
    }
    
    func terminateApp() -> Bool {
        BaseApp.app.terminate()
        var isAppTerminated: Bool = BaseApp.app.wait(for: .notRunning, timeout: LAUNCH_WAIT_TIME)
        return isAppTerminated
    }
    
}
