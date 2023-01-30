import Foundation

class ToDoViewModel {
    var levelUrgency: String?

    func getLevelUrgency(level: String) {
        levelUrgency = level
    }
}
