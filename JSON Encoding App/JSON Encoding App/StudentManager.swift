
import Foundation

class StudentManager: NSObject {
    var students: [Student] = []
    
    var dataURL: URL? {
        let fm =
    }
    
    let url = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Documents")
        .appendingPathComponent("students.json")
    
    func writeTOFile() {
        data.write(to)
    }

    func fromReadFile() {
}
