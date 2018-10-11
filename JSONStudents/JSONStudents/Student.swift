import UIKit

struct Student: CustomStringConvertible, Codable {
    var description: String {
        var result = "\(name), Cohort: \(cohort ?? "iOS3")"
        if let age = age {
            result += ", \(age) years old"
        }
    return result
}
    
    let name: String
    let age: Int?
    let cohort: String?
    
    init(name: String, age: Int?, cohort: String?) {
        (self.name, self.age, self.cohort) = (name, age, cohort)
    }
}



