//
//  ViewController.swift
//  JSON Students
//
//  Created by Jerrick Warren on 10/11/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let studentManager = StudentManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        studentManager.readFromFile()
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cohortTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let cohort = cohortTextField.text else {return}
        studentManager.create(name: name, age: Int(age), cohort: cohort)
        studentManager.writeToFile()
        
    }
    
    @IBAction func printButton(_ sender: Any) {
        print(studentManager.students)
    }
    
}

