//
//  Student.swift
//  JSON Students
//
//  Created by Jerrick Warren on 10/11/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

struct Student: CustomStringConvertible, Codable {
    // lets conform to the CSC protocol
    // lets also do a computed property
    var description: String {
        //  return "\(name), \(age), \(cohort)"
        // optional colescing
        var result = "\(name), Cohort: \(cohort ?? "[unknown cohort]")"
        
        // unwrapping the age
        if let age = age {
            result += ", \(age) Moons old"
        }
        return result
    }
    
    let name: String
    let age: Int?
    let cohort: String?
    
    init(name: String, age: Int? = nil , cohort: String? = nil ) {
        (self.name, self.age, self.cohort) = (name, age, cohort)
    }
}
