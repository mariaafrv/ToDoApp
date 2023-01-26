//
//  ToDoViewModel.swift
//  ToDoApp
//
//  Created by unicred on 25/01/23.
//

import Foundation

class ToDoViewModel {
    var levelUrgency: String?
    
    func getLevelUrgency(level: String) {
        levelUrgency = level
    }
}
