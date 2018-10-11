import Foundation

struct Student: CustomStringConvertible, Codable {
    var description: String {
        var result = "\(name), Cohort: \(cohort ?? "[unknown cohort]")"
        if let age = age {
            result += ", \(age) years old"
        }
        return result
    }
    let name: String
    let age: Int?
    let cohort: String?
}
