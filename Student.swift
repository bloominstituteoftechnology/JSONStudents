//
//  Student.swift
//  JSON Encoding
//
//  Created by Lotanna Igwe-Odunze on 10/11/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation

struct Student: CustomStringConvertible, Codable {
    let name: String
    let age: Int?
    let cohort: String?
    let description: String
}

