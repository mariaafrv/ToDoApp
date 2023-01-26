//
//  TaskDetaislViewController.swift
//  ToDoApp
//
//  Created by unicred on 25/01/23.
//

import UIKit

class TaskDetailslViewController: UIViewController {

    let customView = TaskDetailsScreenView()
    
    func getTaskName(name: String) {
        customView.taskNameLbl.text = name
    }
    
    func getTag(tag: String) {
        print(tag)
        customView.tagLbl.text = tag
        customView.tagLbl.backgroundColor = taskColorMap()[tag]
    }
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.taskNameLbl.delegate = self
    }
}

extension TaskDetailslViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.invalidateIntrinsicContentSize()
        return true
    }
}
