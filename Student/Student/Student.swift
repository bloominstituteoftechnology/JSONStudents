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
        return "\(name), \(String(describing: age)), \(String(describing: cohort))"
        
}


    let name: String
    let age: Int?
    let cohort: String?


}

