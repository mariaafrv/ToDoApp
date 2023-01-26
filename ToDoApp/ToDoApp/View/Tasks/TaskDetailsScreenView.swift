//
//  TaskDetailsScreenView.swift
//  ToDoApp
//
//  Created by unicred on 25/01/23.
//

import UIKit

class TaskDetailsScreenView: BaseView {

    let taskNameLbl: UITextField = {
        let taskNameLbl = UITextField()
        taskNameLbl.text = ""
        taskNameLbl.font = .systemFont(ofSize: 28)
        taskNameLbl.isEnabled = false
        return taskNameLbl
    }()
    
    lazy var editButton: UIImageView = {
        let editButton = UIImageView()
        editButton.image = UIImage(systemName: "pencil")
        return editButton
    }()
    
    lazy var tagLbl: UILabel = {
        let tagLbl = UILabel()
        tagLbl.textAlignment = .center
        tagLbl.textColor = .white
        tagLbl.layer.cornerRadius = 6
        tagLbl.layer.borderWidth = 0.5
        tagLbl.layer.borderColor = UIColor.systemGray.cgColor
        tagLbl.layer.masksToBounds = true
        return tagLbl
    }()
    
    lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray
        return line
    }()

    override func addSubviews() {
        addSubview(taskNameLbl)
        addSubview(tagLbl)
        addSubview(editButton)
        addSubview(line)
    }
    
    override func addConstraints() {
        taskNameLbl.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 20, bottom: 0, right: 0),
            size: .init(width: 0, height: 40))
        
        tagLbl.anchor(
            top: taskNameLbl.bottomAnchor,
            leading: taskNameLbl.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0),
            size: .init(width: 75, height: 25))
        
        editButton.anchor(
            top: taskNameLbl.topAnchor,
            leading: taskNameLbl.trailingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 3, left: 5, bottom: 0, right: 0),
            size: .init(width: 30, height: 32))
        
        line.anchor(
            top: tagLbl.bottomAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 25, left: 10, bottom: 0, right: 60),
            size: .init(width: frame.width, height: 1))
    }

}
