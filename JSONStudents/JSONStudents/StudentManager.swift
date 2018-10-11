import Foundation

class StudentManager: NSObject {
    var students: [Student] = []
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
        do {
            let studentsEncoded = try JSONEncoder().encode(students)
            try studentsEncoded.write(to: url)
        } catch {
            print("Error: \(error)")
        }
    }
    
    func readFromFile() {
        do {
            let data = try Data(contentsOf: url)
            let studentsDecoded = try JSONDecoder().decode([Student].self, from: data)
            students = studentsDecoded
        } catch {
            print("Error: \(error)")
        }
        
    }
}
