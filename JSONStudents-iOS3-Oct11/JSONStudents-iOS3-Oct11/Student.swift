//
//  Student.swift
//  JSONStudents-iOS3-Oct11
//
//  Created by Vijay Das on 10/11/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import Foundation


struct Student: CustomStringConvertible, Codable {
    var description: String {
        var result = "\(name), \(cohort ?? "[Unknown Cohort]")"
        if let age = age {
            result += ", \(age) years old"
        }
        return result
    }
    let name: String
    let age: Int?
    let cohort: String?
    
    init(name: String, age: Int? = nil, cohort: String? = nil) {
        (self.name, self.age, self.cohort) = (name, age, cohort)
    }
}

