import Foundation

class StudentManager: NSObject {
    var students: [Student] = []
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeToFile() {
        do {
            let studentEncoded = try JSONEncoder().encode(students)
            if let string = String(data: studentEncoded, encoding: .utf8) {
                print(string)
            }
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
        
        func create(name: String, age: Int?, cohort: String?) {
            let student = Student.init(name: name, age: age, cohort: cohort)
            students.append(student)
        }
    }
    

