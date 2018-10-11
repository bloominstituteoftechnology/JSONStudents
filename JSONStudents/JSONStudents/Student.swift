import Foundation

struct Student: CustomStringConvertible, Codable {
    var description: String {
        var result = "\(name), Cohort: \(cohort ?? "[Unknown cohort]")"
        if var age = age {
            if age > 150 {
                age = 1
            }
            result += ", \(age) years old"
        }
        return result
    }
    let name: String
    let age: Int?
    let cohort: String?
}

