//
//  Student.swift
//  Student
//
//  Created by Yvette Zhukovsky on 10/11/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import Foundation

struct Student: CustomStringConvertible, Codable {
    var description: String {
        var msg = name

        if let age = age {
            msg = msg + ", aged " + String(age)
            
        }
        
        if let cohort = cohort {
            msg = msg + ", cohort " + String(cohort)
        }
        return msg
}


    let name: String
    let age: Int?
    let cohort: String?


}

