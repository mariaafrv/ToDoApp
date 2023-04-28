import UIKit

class ToDoListCollectionViewCell: BaseCell {
  var updateTask: (Task) -> Void = {_ in}
  var deleteTask: () -> Void = {}
  
  var tasksView: Task? {
    didSet {
      taskLabel.text = tasksView?.name
    }
  }
  
  lazy var cell: UIView = {
    let cell = UIView()
    cell.layer.cornerRadius = 6
    cell.layer.borderWidth = 1
    cell.layer.borderColor = UIColor.systemGray.cgColor
    cell.isUserInteractionEnabled = true
    cell.translatesAutoresizingMaskIntoConstraints = false
    return cell
  }()
  
  lazy var taskLabel: UILabel = {
    let taskLbl = UILabel()
    taskLbl.text = "my task"
    taskLbl.translatesAutoresizingMaskIntoConstraints = false
    return taskLbl
  }()
  
  lazy var menuButton: UIButton = {
    let menuButton = UIButton()
    menuButton.showsMenuAsPrimaryAction = true
    menuButton.changesSelectionAsPrimaryAction = true
    menuButton.backgroundColor = .systemMint
    menuButton.layer.cornerRadius = 6
    menuButton.layer.borderWidth = 0.5
    menuButton.layer.borderColor = UIColor.systemGray.cgColor
    menuButton.translatesAutoresizingMaskIntoConstraints = false
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
    cell.addSubview(taskLabel)
    cell.addSubview(menuButton)
    
    menuButton.menu = setLevel()
    
    let longPress = UILongPressGestureRecognizer(target: self, action: #selector(removeItem))
    longPress.minimumPressDuration = 0.5
    
    cell.addGestureRecognizer(longPress)
  }
  
  @objc func removeItem(Recognizer: UILongPressGestureRecognizer){
    if Recognizer.state == .began {
      
    } else if Recognizer.state == .ended {
      self.deleteTask()
    }
    
  }
  
  override func addConstraints() {
    NSLayoutConstraint.activate([
      cell.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
      cell.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
      cell.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 5),
      cell.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
      cell.widthAnchor.constraint(equalToConstant: 340),
      cell.heightAnchor.constraint(equalToConstant: 80),
      
      taskLabel.topAnchor.constraint(equalTo: cell.topAnchor),
      taskLabel.leadingAnchor.constraint(equalTo: cell.leadingAnchor, constant: 5),
      taskLabel.bottomAnchor.constraint(equalTo: cell.bottomAnchor),
      taskLabel.widthAnchor.constraint(equalToConstant: 200),
      taskLabel.heightAnchor.constraint(equalToConstant: 80),
      
      menuButton.topAnchor.constraint(equalTo: cell.topAnchor, constant: 23),
      menuButton.trailingAnchor.constraint(equalTo: cell.trailingAnchor, constant: -10),
      menuButton.widthAnchor.constraint(equalToConstant: 75),
      menuButton.heightAnchor.constraint(equalToConstant: 23)
    ])
  }
}
