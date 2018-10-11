//
//  StudentManager.swift
//  JSON Students
//
//  Created by Jerrick Warren on 10/11/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class StudentManager: NSObject {
    
    var students: [String] = []
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
        
        // JSON Encoder
        // JSON write to file?
        // do - catch
        
    }
    
    func readFromFile() {
        
        // JSON DeCoder
        // JSON read from file?
        // do - catch
        
    }
}
