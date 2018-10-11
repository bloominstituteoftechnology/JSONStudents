import UIKit

struct Student: CustomStringConvertible, Codable {
    var description: String {
        // some code
    }
    
    let name: String
    let age: Int?
    let cohort: String?
}

