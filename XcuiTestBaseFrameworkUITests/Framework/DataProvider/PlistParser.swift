//
//  PlistParser.swift
//  XcuiTestBaseFrameworkUITests
//
//  Created by vaishakh.thayyil on 25/06/23.
//

import Foundation


protocol PlistParser {
    
}

extension PlistParser {
    
    /*
        used for getting data from plist as dictionary key value pair
        Useful in scenario in which we can get value from config plist for setting up environments
     */
    
    func getDataDictionaryFromPlist(testBundle: Bundle,  resourceName: String) -> Dictionary<String, Any>?{
        var plistDict : [String : Any]?
        guard let path = testBundle.url(forResource: resourceName, withExtension: "plist")  else {
            return nil
        }
        do {
            let infoPlistData = try Data(contentsOf: path)
            if let dict = try PropertyListSerialization.propertyList(from: infoPlistData,options:[], format: nil) as? [String: Any] {
                plistDict = dict
            }
        } catch {
            return nil
        }
        return plistDict
    }
    
    /*
        used for getting data from plist as ArrayList
        Useful for getting environment specific scenario as in UAT, IT
     */
    
    func getDataDictionaryFromPlist(testBundle: Bundle,  resourceName: String) -> [Any]? {
        var arrayList: [Any]?
        guard let path = testBundle.url(forResource: resourceName, withExtension: "plist") else {
            return nil
        }
        do {
            let infoPlistData = try Data(contentsOf: path)
            if let respArrList = PropertyListSerialization.propertyList(from: infoPlistData, options: [], format: nil) as? [Any] {
                arrayList = respArrList
            }
        } catch {
            return nil
        }
        return arrayList
    }

}

