import UIKit

class StudentManager: NSObject {
    var students: [Student] = []
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
        do {            
            data.write(to: url)
        }
    }
    
    func readFromFile() {
        do {
            Data(contentsOf: url)
        }
    }
}
