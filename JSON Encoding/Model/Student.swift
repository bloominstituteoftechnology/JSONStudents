//
//  Student.swift
//  JSON Encoding
//
//  Created by Rick Wolter on 10/11/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation

struct Student: CustomStringConvertible, Codable {
    
    let name: String
    let cohort: String?
    let age: Int?
//
//    init(name: String,cohort: String? = nil, age: Int){
//        self.name = name
//        self.cohort = cohort
//        self.age = age
//    }
    
//    var description: String {
//        let studentDescription = "\(name), Cohort: \(cohort ?? "unknown cohort"), \(age) years old"
//        return studentDescription
//    }
    var description: String {
        var studentDescription = name
        
        if let age = age {
            studentDescription +=  ", aged " + String(age)
            
        }
        
        if let cohort = cohort {
            studentDescription += ", cohort " + String(cohort)
        }
        return studentDescription
    }
    
}
