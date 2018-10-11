import UIKit

class StudentManager: NSObject {
    var students: [Student] = []
}

let url = URL(fileURLWithPath: NSHomeDirectory())
    .appendingPathComponent("Documents")
    .appendingPathComponent("students.json")

func writeToFile(){
    //do catch
    do {
        let nameencoded = try JSONEncoder().encode(name)
        if let string = String(data: nameencoded, encoding: utf8){
            print(string)
        }
        let namedecoded = try
            JSONDecoder().decode(Student.self, from: nameencoded)
        print(name)
}

func readFromFile(){
    //do catch
}
