//
//  ToDoListTableViewCell.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

class ToDoListCollectionViewCell: BaseCell {
    var updateTask: (Task) -> Void = {_ in}

    var tasksView: Task? {
        didSet {
            taskLbl.text = tasksView?.name
        }
    }
    
    lazy var cell: UIView = {
        let cell = UIView()
        cell.layer.cornerRadius = 6
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.systemGray.cgColor
        return cell
    }()
    
    let taskLbl: UILabel = {
        let taskLbl = UILabel()
        taskLbl.text = "my task"
        return taskLbl
    }()
    
    let menuButton: UIButton = {
        let menuButton = UIButton()
        menuButton.showsMenuAsPrimaryAction = true
        menuButton.changesSelectionAsPrimaryAction = true
        menuButton.backgroundColor = .systemMint
        menuButton.layer.cornerRadius = 6
        menuButton.layer.borderWidth = 0.5
        menuButton.layer.borderColor = UIColor.systemGray.cgColor
        return menuButton
    }()
    
    func setLevel() -> UIMenu {
        let colorMap = taskColorMap()
        
        let handleMenuChange: UIActionHandler = { action in
            self.tasksView?.urgency = action.title
            self.menuButton.backgroundColor = colorMap[action.title]
            self.updateTask(self.tasksView!)
        }

        return UIMenu(title: "Level of urgency", children: [
            UIAction(title: "Easy", handler: handleMenuChange),
            UIAction(title: "Medium", handler: handleMenuChange),
            UIAction(title: "Urgent", handler: handleMenuChange),
        ])
    }
    
    override func addSubviews() {
        addSubview(cell)
        cell.addSubview(taskLbl)
        cell.addSubview(menuButton)
        
        menuButton.menu = setLevel()
    }
    
    override func addConstraints() {
        cell.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 5, left: 10, bottom: 5, right: 10),
            size: .init(width: 340, height: 80))
        
        taskLbl.anchor(
            top: cell.topAnchor,
            leading: cell.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 5, bottom: 0, right: 0),
            size: .init(width: 200, height: 20))
        
        taskLbl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        menuButton.anchor(
            top: cell.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: cell.trailingAnchor,
            padding: .init(top: 20, left: 0, bottom: 0, right: 10),
            size: .init(width: 75, height: 23))
    }
}
