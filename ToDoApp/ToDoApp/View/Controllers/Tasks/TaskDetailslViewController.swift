//
//  TaskDetaislViewController.swift
//  ToDoApp
//
//  Created by unicred on 25/01/23.
//

import UIKit

class TaskDetailslViewController: UIViewController {

    let customView = TaskDetailsScreenView()
    
    var updateTaskName: (String, String, String) -> Void = {_, _, _ in}
    
    func getTaskName(name: String) {
        customView.taskNameLbl.text = name
    }
    
    func getDesc(name: String) {
        if name != "" {
            customView.descriptionTextField.text = name
            customView.descriptionTextField.textColor = .black
            
        }
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
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(makeLblEditable))
        customView.editButton.addGestureRecognizer(tapGestureRecognizer)
        
        let tapGestureRecognizerBg = UITapGestureRecognizer(target: self, action: #selector(makeLbldisable))
        customView.background.addGestureRecognizer(tapGestureRecognizerBg)
        
        customView.saveButton.addTarget(self, action: #selector(editTasks), for: .touchUpInside)
        customView.pencilButton.addTarget(self, action: #selector(makeFieldEditable), for: .touchUpInside)

    }
    
    @objc func makeLblEditable(){
        customView.taskNameLbl.isEnabled = true
        customView.taskNameLbl.borderStyle = .roundedRect
        customView.saveButton.isEnabled = true
    }
    
    @objc func makeLbldisable(){
        customView.taskNameLbl.isEnabled = false
        customView.taskNameLbl.borderStyle = .none
    }
    
    @objc func editTasks(){
        updateTaskName(customView.taskNameLbl.text ?? "", "Easy", customView.descriptionTextField.text ?? "")
    }
    
    @objc func makeFieldEditable(){
        customView.descriptionTextField.textColor = .black
        customView.descriptionTextField.isEditable.toggle()
        customView.saveButton.isEnabled = true
        if customView.descriptionTextField.text == "Enter your task descriptions" {
            customView.descriptionTextField.text = nil
        }
    }
}

extension TaskDetailslViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.invalidateIntrinsicContentSize()
        return true
    }
}
