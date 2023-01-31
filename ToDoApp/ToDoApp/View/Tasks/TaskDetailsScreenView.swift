import UIKit

class TaskDetailsScreenView: BaseView {

    lazy var background: UIView = {
        let background = UIView()
        background.isUserInteractionEnabled = true
        background.backgroundColor = .systemGray6
        return background
    }()
    
    lazy var taskNameLbl: UITextField = {
        let taskNameLbl = UITextField()
        taskNameLbl.text = ""
        taskNameLbl.font = .systemFont(ofSize: 28)
        taskNameLbl.isEnabled = false
        return taskNameLbl
    }()
    
    lazy var editButton: UIImageView = {
        let editButton = UIImageView()
        editButton.image = UIImage(systemName: "pencil")
        editButton.isUserInteractionEnabled = true
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
    
    lazy var taskDate: UIDatePicker = {
        let taskDate = UIDatePicker()
        taskDate.timeZone = NSTimeZone.local
        taskDate.backgroundColor = .systemGray6
        taskDate.minimumDate = .now
        return taskDate
    }()
    
    lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray
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
        return descriptionTextField
        
    }()
    
    lazy var pencilButton: UIButton = {
        let pencilButton = UIButton()
        let pencilSign = UIImage(systemName: "pencil")
        pencilButton.setImage(pencilSign, for: .normal)
        return pencilButton
    }()
    
    lazy var saveButton: UIButton = {
        let saveButton = UIButton(configuration: .filled())
        saveButton.setTitle("Save", for: .normal)
        saveButton.isEnabled = false
        return saveButton
    }()

    override func addSubviews() {
        addSubview(background)
        addSubview(taskNameLbl)
        addSubview(tagLbl)
        addSubview(editButton)
        addSubview(taskDate)
        addSubview(line)
        addSubview(descriptionTextField)
        addSubview(pencilButton)
        addSubview(saveButton)
    }
    
    
    override func addConstraints() {
        
        background.anchor(
            top: topAnchor,
            leading: leadingAnchor,
            bottom: bottomAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: frame.width, height: frame.height))
        
        taskNameLbl.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 40, left: 20, bottom: 0, right: 0),
            size: .init(width: 0, height: 40))
        
        tagLbl.anchor(
            top: taskNameLbl.bottomAnchor,
            leading: taskNameLbl.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0),
            size: .init(width: 75, height: 30))
        
        editButton.anchor(
            top: taskNameLbl.topAnchor,
            leading: taskNameLbl.trailingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 3, left: 5, bottom: 0, right: 0),
            size: .init(width: 30, height: 32))
        
        taskDate.anchor(
            top: tagLbl.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 15),
            size: .init(width: 200, height: 30))
        
        line.anchor(
            top: tagLbl.bottomAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 25, left: 10, bottom: 0, right: 60),
            size: .init(width: frame.width, height: 1))
        
        descriptionTextField.anchor(
            top: line.bottomAnchor,
            leading: line.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 3, bottom: 0, right: 3),
            size: .init(width: 360, height: 160))
        
        pencilButton.anchor(
            top: descriptionTextField.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: descriptionTextField.trailingAnchor,
            padding: .init(top: 2, left: 0, bottom: 0, right: 0),
            size: .init(width: 40, height: 40))
        
        saveButton.anchor(
            top: descriptionTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 40))
        
        saveButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
