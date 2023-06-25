//
//  DataUtility.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 25/06/23.
//

import Foundation



/*
  Idea behing conforming to PlistParser protocol extension is for scalability
  We can extend dataUtility to extend to other data formats as JsonParser
  
 */
class DataUtility: PlistParser {
    
    static let sharedInstance = DataUtility()
    private init() {}
    
}
