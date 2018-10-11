//
//  ViewController.swift
//  JSONEncoding
//
//  Created by Nikita Thomas on 10/11/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var cohortText: UITextField!
    let studentManager = StudentManager()
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameText.text else {return}
        guard let age = ageText.text else {return}
        guard let cohort = cohortText.text else {return}
        studentManager.create(name: name, age: Int(age), cohort: cohort)
        studentManager.writeToFile()
    }
    
    @IBAction func printButton(_ sender: Any) {
        print(studentManager.students)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        studentManager.readFromFile()
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        studentManager.students = []
        studentManager.writeToFile()
    }
    
}

