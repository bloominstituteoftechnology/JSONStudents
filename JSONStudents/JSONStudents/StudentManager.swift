import UIKit

class StudentManager: NSObject {
    var students: [Student] = []
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
    }
    
    func readFromFile() {
    }
    
}
