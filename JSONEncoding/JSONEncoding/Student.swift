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
        let result = ""
        return result
    }
    
    let name: String
    let age: Int?
    let cohort: String?
}
