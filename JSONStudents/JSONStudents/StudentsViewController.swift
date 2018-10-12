import UIKit

class StudentsViewController: UIViewController {
    
    var studentManager = StudentManager()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cohortTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameTextField.text else { return }
        guard let age = ageTextField.text else { return }
        guard let cohort = cohortTextField.text else { return }
        studentManager.createStudent(name: name, age: Int(age), cohort: cohort)
        studentManager.writeToFile()
    }
    
    @IBAction func printButton(_ sender: Any) {
        print(studentManager.students)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        studentManager.readFromFile()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

