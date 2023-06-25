//
//  HomeScreen.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 26/06/23.
//

import Foundation
import XCTest

class HomeScreen: BaseScreen {
    
    let WAIT_TIMEOUT: TimeInterval = 5.0
    
    private lazy var createNoteButton = app.buttons
                                        .matching(NSPredicate(format: "label contains[cd] 'New Note'"))
                                        .firstMatch
    
    private lazy var deleteNoteButton = app.buttons["Delete"].firstMatch
    
    private lazy var newFolderButton = app.checkBoxes
                                          .element(matching: NSPredicate(format: "label contains[cd] 'Create new folder'"))
                                          .firstMatch
    
    
    func verifyHomeScreenLaunched() -> Bool{
        return createNoteButton.waitForExistence(timeout: WAIT_TIMEOUT)
    }
    
    func clickNewFolderButton() {
        print(app.debugDescription)
         let isPresent = newFolderButton.waitForExistence(timeout: WAIT_TIMEOUT)
         newFolderButton.click()
    }
    
    
}
