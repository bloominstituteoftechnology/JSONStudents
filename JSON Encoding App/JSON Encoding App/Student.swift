import Foundation

struct Student: CustomStringConvertible, Codable {
    let name: String
    let age: Int?
    let cohort: String?
}
