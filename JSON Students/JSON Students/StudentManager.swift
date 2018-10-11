//
//  StudentManager.swift
//  JSON Students
//
//  Created by Jerrick Warren on 10/11/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class StudentManager: NSObject {
    
    var students: [Student] = []
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
        
        // JSON Encoder
        // JSON write to file?
        // do - catch
        
        do {
            let studentsEncoded = try JSONEncoder().encode(students)
            if let string = String(data: studentsEncoded, encoding: .utf8) {
                print(string)
            }
        }catch {
            print("Error: \(error)")
        }
    }
    
    func readFromFile() {
        
        // JSON DeCoder
        // JSON read from file?
        // do - catch
        
    do {
            let data = try Data(contentsOf: url)
            let studentsDecoded = try JSONDecoder().decode([Student].self, from: data)
            students = studentsDecoded
        } catch {
            print("Error: \(error)")
        }
    }
    
    func create(name: String, age: Int?, cohort: String?) {
        let student = Student.init(name: name , age: age, cohort: cohort)
        students.append(student)
        
    }
}
