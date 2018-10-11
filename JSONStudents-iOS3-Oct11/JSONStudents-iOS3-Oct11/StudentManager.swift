//
//  StudentManager.swift
//  JSONStudents-iOS3-Oct11
//
//  Created by Vijay Das on 10/11/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import Foundation

class StudentManager: NSObject {
    static let shared = StudentManager()
    private override init() {}

    var students: [Student] = []
}

// CREATE FUNC

let url = URL(fileURLWithPath: NSHomeDirectory())
    .appendingPathComponent("Documents")
    .appendingPathComponent("students.json")

func writeToFile() {
    //encoder
}

func readFromFile() {
    //decoder
}
