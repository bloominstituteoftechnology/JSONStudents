import UIKit

struct Student: CustomStringConvertible, Codable {
    var description: String {
        var result = "\(name) "
        if let cohort = cohort {
            result += cohort.isEmpty ? "[unknown cohort]" : cohort
        } else {
            result += " [unknown cohort]"
        }
        if let age = age {
            result += ", Age: \(age)"
        }
        return result
    }
    
    let name: String
    let age: Int?
    let cohort: String?
    
    
}
