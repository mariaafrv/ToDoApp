import UIKit

class TaskDetailslViewController: UIViewController {

    let customView = TaskDetailsScreenView()
    
    var updateTaskName: (String, String, String, Date) -> Void = {_, _, _, _ in}
    
    init(taskName: String, info: String, tag: String, date: Date) {
        super.init(nibName: "TaskDetailslViewController", bundle: nil)
        setDataCustomView(taskName: taskName, info: info, tag: tag, date: date)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setDataCustomView(taskName: String, info: String, tag: String, date: Date) {
        customView.taskNameLbl.text = taskName
        if info != "" {
            customView.descriptionTextField.text = info
            customView.descriptionTextField.textColor = UIColor.label
        }
        customView.tagLbl.text = tag
        customView.tagLbl.backgroundColor = taskColorMap()[tag]
        customView.taskDate.date = date
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
        
        customView.saveButton.addTarget(self, action: #selector(editTasks), for: .touchUpInside)
        customView.taskDate.addTarget(self, action: #selector(saveDate), for: .valueChanged)
       
    }
    
    @objc func saveDate() {
        customView.saveButton.isEnabled = true
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
        updateTaskName(customView.taskNameLbl.text ?? "", "Easy", customView.descriptionTextField.text ?? "", customView.taskDate.date )
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
