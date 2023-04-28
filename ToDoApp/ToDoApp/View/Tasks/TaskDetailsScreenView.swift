import UIKit

class TaskDetailsScreenView: BaseView {
  
  lazy var background: UIView = {
    let background = UIView()
    background.isUserInteractionEnabled = true
    background.backgroundColor = .systemGray6
    background.translatesAutoresizingMaskIntoConstraints = false
    return background
  }()
  
  lazy var taskNameLabel: UITextField = {
    let taskNameLbl = UITextField()
    taskNameLbl.text = ""
    taskNameLbl.font = .systemFont(ofSize: 28)
    taskNameLbl.isEnabled = false
    taskNameLbl.translatesAutoresizingMaskIntoConstraints = false
    return taskNameLbl
  }()
  
  lazy var editButton: UIImageView = {
    let editButton = UIImageView()
    editButton.image = UIImage(systemName: "pencil")
    editButton.isUserInteractionEnabled = true
    editButton.translatesAutoresizingMaskIntoConstraints = false
    return editButton
  }()
  
  lazy var tagLabel: UILabel = {
    let tagLbl = UILabel()
    tagLbl.textAlignment = .center
    tagLbl.textColor = .white
    tagLbl.layer.cornerRadius = 6
    tagLbl.layer.borderWidth = 0.5
    tagLbl.layer.borderColor = UIColor.systemGray.cgColor
    tagLbl.layer.masksToBounds = true
    tagLbl.translatesAutoresizingMaskIntoConstraints = false
    return tagLbl
  }()
  
  lazy var taskDate: UIDatePicker = {
    let taskDate = UIDatePicker()
    taskDate.timeZone = NSTimeZone.local
    taskDate.backgroundColor = .systemGray6
    taskDate.minimumDate = .now
    taskDate.translatesAutoresizingMaskIntoConstraints = false
    return taskDate
  }()
  
  lazy var line: UIView = {
    let line = UIView()
    line.backgroundColor = .systemGray
    line.translatesAutoresizingMaskIntoConstraints = false
    return line
  }()
  
  lazy var descriptionTextField: UITextView = {
    let descriptionTextField = UITextView()
    descriptionTextField.layer.borderWidth = 1
    descriptionTextField.layer.borderColor = UIColor.systemGray5.cgColor
    descriptionTextField.layer.cornerRadius = 8
    descriptionTextField.layer.masksToBounds = true
    descriptionTextField.font = .systemFont(ofSize: 16)
    descriptionTextField.text = "Enter your task descriptions"
    descriptionTextField.textColor = UIColor.placeholderText
    descriptionTextField.isUserInteractionEnabled = true
    descriptionTextField.translatesAutoresizingMaskIntoConstraints = false
    return descriptionTextField
    
  }()
  
  lazy var pencilButton: UIButton = {
    let pencilButton = UIButton()
    let pencilSign = UIImage(systemName: "pencil")
    pencilButton.setImage(pencilSign, for: .normal)
    pencilButton.translatesAutoresizingMaskIntoConstraints = false
    return pencilButton
  }()
  
  lazy var saveButton: UIButton = {
    let saveButton = UIButton(configuration: .filled())
    saveButton.setTitle("Save", for: .normal)
    saveButton.isEnabled = false
    saveButton.translatesAutoresizingMaskIntoConstraints = false
    return saveButton
  }()
  
  override func addSubviews() {
    addSubview(background)
    addSubview(taskNameLabel)
    addSubview(tagLabel)
    addSubview(editButton)
    addSubview(taskDate)
    addSubview(line)
    addSubview(descriptionTextField)
    addSubview(pencilButton)
    addSubview(saveButton)
  }
  
  
  override func addConstraints() {
    NSLayoutConstraint.activate([
      background.topAnchor.constraint(equalTo: topAnchor),
      background.leadingAnchor.constraint(equalTo: leadingAnchor),
      background.bottomAnchor.constraint(equalTo: bottomAnchor),
      background.trailingAnchor.constraint(equalTo: trailingAnchor),
      background.widthAnchor.constraint(equalToConstant: frame.width),
      background.heightAnchor.constraint(equalToConstant: frame.height),
      
      taskNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
      taskNameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
      taskNameLabel.heightAnchor.constraint(equalToConstant: 40),
      
      tagLabel.topAnchor.constraint(equalTo: taskNameLabel.bottomAnchor, constant: 20),
      tagLabel.leadingAnchor.constraint(equalTo: taskNameLabel.leadingAnchor),
      tagLabel.widthAnchor.constraint(equalToConstant: 75),
      tagLabel.heightAnchor.constraint(equalToConstant: 30),
      
      editButton.topAnchor.constraint(equalTo: taskNameLabel.topAnchor, constant: 3),
      editButton.leadingAnchor.constraint(equalTo: taskNameLabel.trailingAnchor, constant: 5),
      editButton.widthAnchor.constraint(equalToConstant: 30),
      editButton.heightAnchor.constraint(equalToConstant: 32),
      
      taskDate.topAnchor.constraint(equalTo: tagLabel.topAnchor),
      taskDate.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -15),
      taskDate.widthAnchor.constraint(equalToConstant: 200),
      taskDate.heightAnchor.constraint(equalToConstant: 30),
      
      line.topAnchor.constraint(equalTo: tagLabel.bottomAnchor, constant: 25),
      line.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
      line.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60),
      line.widthAnchor.constraint(equalToConstant: frame.width),
      line.heightAnchor.constraint(equalToConstant: 1),
      
      descriptionTextField.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 30),
      descriptionTextField.leadingAnchor.constraint(equalTo: line.leadingAnchor, constant: 3),
      descriptionTextField.widthAnchor.constraint(equalToConstant: 360),
      descriptionTextField.heightAnchor.constraint(equalToConstant: 160),
      
      pencilButton.topAnchor.constraint(equalTo: descriptionTextField.topAnchor, constant: 2),
      pencilButton.trailingAnchor.constraint(equalTo: descriptionTextField.trailingAnchor),
      pencilButton.widthAnchor.constraint(equalToConstant: 40),
      pencilButton.heightAnchor.constraint(equalToConstant: 40),
      
      saveButton.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 30),
      saveButton.widthAnchor.constraint(equalToConstant: 360),
      saveButton.heightAnchor.constraint(equalToConstant: 40),
      saveButton.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
  }
}
