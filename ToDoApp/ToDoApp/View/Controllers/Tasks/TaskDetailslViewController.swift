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
            customView.descriptionTextField.textColor = UIColor.label
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
        customView.descriptionTextField.delegate = self
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(makeLblEditable))
        customView.editButton.addGestureRecognizer(tapGestureRecognizer)
        
        let tapGestureRecognizerBg = UITapGestureRecognizer(target: self, action: #selector(makeLbldisable))
        customView.background.addGestureRecognizer(tapGestureRecognizerBg)

//        let tapGestureRecognizerDesc = UITapGestureRecognizer(target: self, action: #selector(makeFieldEditable))
//        customView.descriptionTextField.addGestureRecognizer(tapGestureRecognizerDesc)
        
        customView.saveButton.addTarget(self, action: #selector(editTasks), for: .touchUpInside)
    }
    
    @objc func makeLblEditable() {
        customView.taskNameLbl.isEnabled = true
        customView.taskNameLbl.borderStyle = .roundedRect
        customView.saveButton.isEnabled = true
    }
    
    @objc func makeLbldisable() {
        customView.taskNameLbl.isEnabled = false
        customView.taskNameLbl.borderStyle = .none
    }
    
    @objc func editTasks() {
        updateTaskName(customView.taskNameLbl.text ?? "", "Easy", customView.descriptionTextField.text ?? "")
    }
    
    @objc func makeFieldEditable(){
//        customView.descriptionTextField.textColor = UIColor.label
//        customView.saveButton.isEnabled = true
//        if customView.descriptionTextField.text == "Enter your task descriptions" {
//            customView.descriptionTextField.text = nil
//        }
    }
}

extension TaskDetailslViewController: UITextFieldDelegate, UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if customView.descriptionTextField.text == "Enter your task descriptions" {
                   customView.descriptionTextField.text = nil
               }
        textView.textColor = .label
        customView.saveButton.isEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.invalidateIntrinsicContentSize()
        return true
    }
}
