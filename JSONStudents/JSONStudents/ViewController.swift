import UIKit

class ViewController: UIViewController {
    
    var studentManager = StudentManager()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        studentManager.readFromFile()
    }
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var cohortField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        studentManager.writeToFile()
        guard let name = nameField.text, let age = ageField.text, let cohort = cohortField.text else { return }
        studentManager.create(name: name, age: Int(age), cohort: cohort)
        studentManager.writeToFile()
    }
    
    
    @IBAction func printButton(_ sender: Any) {
        print(studentManager.students)
    }
    
    
    
    
    
    


}

