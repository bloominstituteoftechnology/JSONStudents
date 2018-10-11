import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var cohortLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var cohortTextField: UITextField!
    
    @IBAction func printButton(_ sender: Any) {
        print(studentManager.students)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let cohort = cohortTextField.text
        else {return}
        studentManager.create(name:name, age: age, cohort: cohort)
        studentManager.writeToFile[]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        <#code#>
    }
}

