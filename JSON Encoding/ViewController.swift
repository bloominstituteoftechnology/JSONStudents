//
//  ViewController.swift
//  JSON Encoding
//
//  Created by Rick Wolter on 10/11/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var studentManager = StudentManager()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cohortTextField: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        studentManager.readFromFile()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    

    @IBAction func print(_ sender: Any) {
        
        for i in studentManager.students {
            print(i)
        }
    }
    
    @IBAction func save(_ sender: Any) {
        guard let name = nameTextField.text,
        let ageString = ageTextField.text,
        let cohort = cohortTextField.text,
        let age = Int(ageString) else {return}
        
        let student = Student(name: name, cohort: cohort, age: age)
        studentManager.students.append(student)
        studentManager.writeToFile()
        
        nameTextField.text = ""
        ageTextField.text = ""
        cohortTextField.text = ""
    }
}

