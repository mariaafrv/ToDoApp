
import UIKit

class RegisterScreenView: BaseView {
  
  lazy var registerLabel: UILabel = {
    let registerLbl = UILabel()
    registerLbl.text = "Create your account"
    registerLbl.textColor = .tintColor
    registerLbl.font = .systemFont(ofSize: 24)
    registerLbl.translatesAutoresizingMaskIntoConstraints = false
    return registerLbl
  }()
  
  lazy var registerDescription: UILabel = {
    let registerDescription = UILabel()
    registerDescription.text = "Please enter your personal informations"
    registerDescription.numberOfLines = 0
    registerDescription.textAlignment = .center
    registerDescription.translatesAutoresizingMaskIntoConstraints = false
    return registerDescription
  }()
  
  lazy var nameTextField: TextFieldComponent = {
    let nameTextField = TextFieldComponent(placeholder: "Enter your first name", secureText: false)
    return nameTextField
  }()
  
  lazy var lastNameTextField: TextFieldComponent = {
    let lastNameTextField = TextFieldComponent(placeholder: "Enter your last name", secureText: false)
    return lastNameTextField
  }()
  
  lazy var emailTextField: TextFieldComponent = {
    let emailTextField = TextFieldComponent(placeholder: "Enter your email", secureText: false)
    return emailTextField
  }()
  
  lazy var passwordTextField: TextFieldComponent = {
    let passwordTextField = TextFieldComponent(placeholder: "Enter your password", secureText: true)
    return passwordTextField
  }()

  lazy var registerButton: UIButton = {
    let registerButton = UIButton()
    registerButton.setTitle("Register", for: .normal)
    registerButton.backgroundColor = .tintColor
    registerButton.layer.cornerRadius = 6
    registerButton.layer.borderWidth = 1
    registerButton.layer.borderColor = UIColor.systemGray5.cgColor
    registerButton.translatesAutoresizingMaskIntoConstraints = false
    return registerButton
  }()
  
  
  override func addSubviews() {
    backgroundColor = .systemGray6
    addSubview(registerLabel)
    addSubview(registerDescription)
    addSubview(nameTextField)
    addSubview(lastNameTextField)
    addSubview(emailTextField)
    addSubview(passwordTextField)
    addSubview(registerButton)
  }
  
  override func addConstraints() {
    NSLayoutConstraint.activate([
      registerLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 35),
      registerLabel.widthAnchor.constraint(equalToConstant: 210),
      registerLabel.heightAnchor.constraint(equalToConstant: 30),
      registerLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      registerDescription.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 15),
      registerDescription.widthAnchor.constraint(equalToConstant: 200),
      registerDescription.heightAnchor.constraint(equalToConstant: 50),
      registerDescription.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      nameTextField.topAnchor.constraint(equalTo: registerDescription.bottomAnchor, constant: 25),
      nameTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
      nameTextField.widthAnchor.constraint(equalToConstant: 180),
      nameTextField.heightAnchor.constraint(equalToConstant: 50),
      
      lastNameTextField.topAnchor.constraint(equalTo: nameTextField.topAnchor),
      lastNameTextField.leadingAnchor.constraint(equalTo: nameTextField.trailingAnchor, constant: 2),
      lastNameTextField.widthAnchor.constraint(equalToConstant: 180),
      lastNameTextField.heightAnchor.constraint(equalToConstant: 50),
      
      emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
      emailTextField.widthAnchor.constraint(equalToConstant: 360),
      emailTextField.heightAnchor.constraint(equalToConstant: 50),
      emailTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
      passwordTextField.widthAnchor.constraint(equalToConstant: 360),
      passwordTextField.heightAnchor.constraint(equalToConstant: 50),
      passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      registerButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
      registerButton.widthAnchor.constraint(equalToConstant: 250),
      registerButton.heightAnchor.constraint(equalToConstant: 60),
      registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
  }
}
