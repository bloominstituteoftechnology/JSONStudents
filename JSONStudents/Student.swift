import UIKit

struct Student: CustomStringConvertible, Codable {
    var description: String

    let name: String
    let age: Int?
    let cohort: String?

}
