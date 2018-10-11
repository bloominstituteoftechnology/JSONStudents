//
//  StudentManager.swift
//  Student
//
//  Created by Yvette Zhukovsky on 10/11/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import Foundation

class StudentManager: NSObject {
    
    var students:[Student] = []
    
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
        
        do {
          let json = try JSONEncoder().encode(students)
            try json.write(to: url)
        }
        
        
        catch {
            print ("ERROR:\(error)")
            
        }
    }
    func readFromFile() {
        
        do{
           let json = try Data(contentsOf: url)
          students =  try JSONDecoder().decode([Student].self, from: json)
            
            
            
            
        }
    
        catch {
            print ("ERROR:\(error)")
            
        }
    
    }
    
    
    
}
