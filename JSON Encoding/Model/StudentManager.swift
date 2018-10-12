//
//  StudentManager.swift
//  JSON Encoding
//
//  Created by Rick Wolter on 10/11/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation

class StudentManager: NSObject {
    
    
    var students = [Student]()
    
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
    .appendingPathComponent("Documents")
    .appendingPathComponent("students.json")
    
    func writeToFile() {
        
        do {
            let studentsEncoding = try JSONEncoder().encode(students)
           try studentsEncoding.write(to: url)
        } catch {
            print("Error \(error)")
        }
        
        
        
    }
    
    func readFromFile() {
        do {
            let studentData = try Data(contentsOf: url)
            var studentsDecoded = try JSONDecoder().decode([Student].self, from: studentData)
            students = studentsDecoded
        
        } catch {
            print("Error: \(error)")
        }
    
}
}
