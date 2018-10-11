//
//  ViewController.swift
//  JSON Encoding App
//
//  Created by Lambda_School_Loaner_18 on 10/11/18.
//  Copyright © 2018 Lambda_School_Loaner_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameText: UITextField!
    
    
    @IBOutlet weak var ageText: UITextField!
    
    
    @IBOutlet weak var cohortText: UITextField!
    
    let studentManager = StudentManager()
    
    @IBAction func saveButton(_ sender: Any) {
    
    
    guard let name = nameText.text else { return}
    guard let age = ageText.text else {return}
    guard let cohort = cohortText.text else {return}
    studentManager.create(name:name, age: Int(age), cohort: cohort)
    studentManager.writeToFile()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        studentManager.readFromFile()
  
      
    }
}

