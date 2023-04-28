import UIKit

class ToDoScreenView: BaseView {
  
  let cellId = "cellId"
  
  lazy var collectionView: UICollectionView = {
    let collectionView = UICollectionView(
      frame:.zero,
      collectionViewLayout: UICollectionViewFlowLayout()
    )
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    return collectionView
  }()
  
  lazy var tasksLabel: UILabel = {
    let tasksLbl = UILabel()
    tasksLbl.text = "My Tasks"
    tasksLbl.font = tasksLbl.font.withSize(26)
    tasksLbl.textColor = UIColor.tintColor
    tasksLbl.translatesAutoresizingMaskIntoConstraints = false
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
    addTask.translatesAutoresizingMaskIntoConstraints = false
    return addTask
  }()
  
  lazy var addButton: UIButton = {
    let addButton = UIButton()
    let plusSign = UIImage(systemName: "plus")
    addButton.setImage(plusSign, for: .normal)
    addButton.translatesAutoresizingMaskIntoConstraints = false
    return addButton
  }()
  
  override func addSubviews() {
    addSubview(tasksLabel)
    addSubview(addTaskTextField)
    addSubview(addButton)
    addSubview(collectionView)
  }
  
  override func addConstraints() {
    NSLayoutConstraint.activate([
    tasksLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
    tasksLabel.leadingAnchor.constraint(equalTo: addTaskTextField.leadingAnchor),
    tasksLabel.widthAnchor.constraint(equalToConstant: 200),
    tasksLabel.heightAnchor.constraint(equalToConstant: 30),
    
    addTaskTextField.topAnchor.constraint(equalTo: tasksLabel.bottomAnchor, constant: 20),
    addTaskTextField.widthAnchor.constraint(equalToConstant: 360),
    addTaskTextField.heightAnchor.constraint(equalToConstant: 50),
    addTaskTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
    
    addButton.topAnchor.constraint(equalTo: addTaskTextField.topAnchor, constant: 5),
    addButton.trailingAnchor.constraint(equalTo: addTaskTextField.trailingAnchor),
    addButton.widthAnchor.constraint(equalToConstant: 60),
    addButton.heightAnchor.constraint(equalToConstant: 40),
    
    collectionView.topAnchor.constraint(equalTo: addTaskTextField.bottomAnchor, constant: 10),
    collectionView.leadingAnchor.constraint(equalTo: addTaskTextField.leadingAnchor, constant: 2),
    collectionView.trailingAnchor.constraint(equalTo: addTaskTextField.trailingAnchor, constant: 2),
    collectionView.widthAnchor.constraint(equalToConstant: 360),
    collectionView.heightAnchor.constraint(equalToConstant: 500)
    ])
  }
}
