import Foundation

struct Student: CustomStringConvertible, Codable {
    var description: String {
        // return "\(name), \(age), \(cohort)"
        var result = "\(name), Cohort: \(cohort ?? "[Unknown cohort]")"
        if var age = age {
            if age > 120 {
                age = 12
            }
            result += ", \(age) years old"
        }
        return result
    }

    let name: String
    let age: Int?
    let cohort: String?



}
