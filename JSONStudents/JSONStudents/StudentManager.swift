import UIKit

class StudentManager: NSObject {
    
    var students: [Student] = []
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
        // encoding information to send "out"
        do {
            let encoder = JSONEncoder()
            let encodedStudents = try encoder.encode(students)
            try encodedStudents.write(to: url)
        } catch {
            print("Cannot write data: \(error)")
        }
    }
    
    func readFromFile() {
        
        // get data, decode it, and write an error statement with the catch block
        
        do {
            let studentData = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let decodedStudents = try decoder.decode([Student].self, from: studentData)
            students = decodedStudents
        } catch {
            print("Data could not be retrieved: \(error)")
        }
        
  
        // decoding outside information to parse
//        let jsonData = jsonString.data(encoding: .utf8)!
//        let decoder = JSONDecoder()
//        let student = try! decoder.decode(Student.self, for: jsonData)
    }
}
