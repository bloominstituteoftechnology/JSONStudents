import UIKit

struct Student: CustomStringConvertible, Codable {
    var description: String {
        // some code
    }
    
    let name: String
    let age: Int?
    let cohort: String?
    
    init(name: String, age: Int? = nil, cohort: String? = nil) {
        (self.name, self.age, self.cohort) = (name, age, cohort)
    }
}
