//
//  ViewController.swift
//  Student
//
//  Created by Yvette Zhukovsky on 10/11/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let sm = StudentManager()
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    
    @IBOutlet weak var cohortTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameTextField.text else {return}
        guard let age = ageTextField.text else {return}
        guard let cohort = cohortTextField.text else {return}
        
        
        sm.students.append(Student(name:name, age:Int(age), cohort:cohort))
        
        
        sm.writeToFile()
        
        nameTextField.text = ""
        ageTextField.text = ""
        cohortTextField.text = ""
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sm.readFromFile()
        
    }
    
    
    @IBAction func printAction(_ sender: Any) {
        
        for i in sm.students {
            print(i)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

