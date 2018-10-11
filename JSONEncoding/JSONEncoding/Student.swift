//
//  Student.swift
//  JSONEncoding
//
//  Created by Nikita Thomas on 10/11/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import Foundation

struct Student: CustomStringConvertible, Codable {
    var description: String {
        var result = "Name: \(name)"
        if let age = age {
            result += ", Age: \(age)"
        }
        if let cohort = cohort {
            result += ", Cohort: \(cohort)."
        }
        return result
    }
    
    let name: String
    let age: Int?
    let cohort: String?
}
