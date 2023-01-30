import UIKit

struct Task {
    var name: String
    var urgency: String
    var description: String
    var date: Date
    
    init(name: String, urgency: String, description: String, date: Date) {
        self.name = name
        self.urgency = urgency
        self.description = description
        self.date = date
    }
}
