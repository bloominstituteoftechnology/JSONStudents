import UIKit

class StudentsViewController: UIViewController {
    
    var studentManager = StudentManager()

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cohortTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        
    }
    
    @IBAction func printButton(_ sender: Any) {
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        studentManager.readFromFile()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

