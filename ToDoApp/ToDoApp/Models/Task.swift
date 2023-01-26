import UIKit

struct Task {
    var name: String
    var urgency: String
    var description: String
    
    init(name: String, urgency: String, description: String) {
        self.name = name
        self.urgency = urgency
        self.description = description
    }
}
