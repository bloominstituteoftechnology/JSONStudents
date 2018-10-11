import UIKit

struct Student: CustomStringConvertible, Codable {
    var description: String {
    var result = "\(name), \(cohort), \(age) years old"
    return result
}
    
    let name: String
    let age: Int?
    let cohort: String?
    }



