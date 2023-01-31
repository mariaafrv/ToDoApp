import UIKit

class ToDoScreenView: BaseView {
    
    let cellId = "cellId"
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame:.zero,
            collectionViewLayout: UICollectionViewFlowLayout()
        )
        return collectionView
    }()
    
    lazy var tasksLbl: UILabel = {
        let tasksLbl = UILabel()
        tasksLbl.text = "My Tasks"
        tasksLbl.font = tasksLbl.font.withSize(26)
        tasksLbl.textColor = UIColor.tintColor
        return tasksLbl
    }()
    
    lazy var addTaskTextField: UITextField = {
        let addTask = UITextField()
        addTask.backgroundColor = .systemGray4
        addTask.placeholder = "Enter your tasks"
        addTask.layer.cornerRadius = 6
        addTask.layer.borderWidth = 1
        addTask.layer.borderColor = UIColor.systemGray.cgColor
        addTask.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: addTask.frame.height))
        addTask.leftViewMode = .always
        return addTask
    }()
    

    
    lazy var addButton: UIButton = {
        let addButton = UIButton()
        let plusSign = UIImage(systemName: "plus")
        addButton.setImage(plusSign, for: .normal)
        return addButton
    }()
    


    override func addSubviews() {
        
        addSubview(tasksLbl)
        addSubview(addTaskTextField)
        addSubview(addButton)
        addSubview(collectionView)
    }
    
    override func addConstraints() {
        
        tasksLbl.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: addTaskTextField.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 30))
        
        addTaskTextField.anchor(
            top: tasksLbl.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 50))
        
        addTaskTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addButton.anchor(
            top: addTaskTextField.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: addTaskTextField.trailingAnchor,
            padding: .init(top: 5, left: 2, bottom: 0, right: 0),
            size: .init(width: 60, height: 40))
        
        collectionView.anchor(
            top: addTaskTextField.bottomAnchor,
            leading: addTaskTextField.leadingAnchor,
            bottom: nil,
            trailing: addTaskTextField.trailingAnchor,
            padding: .init(top: 10, left: 2, bottom: 0, right: 2),
            size: .init(width: 360, height: 500))

    }
    

}
