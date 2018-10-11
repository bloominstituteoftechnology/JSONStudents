//
//  StudentManager.swift
//  JSON Encoding
//
//  Created by Lotanna Igwe-Odunze on 10/11/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation

class StudentManager: NSObject {
    
    var students: [Student] = []
    

    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
        
        data.write(to: url)
    }
    
    func readFromFile() {
        
        data(contentsOf: url)
    }
}
