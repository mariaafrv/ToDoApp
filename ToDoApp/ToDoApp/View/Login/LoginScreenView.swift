import UIKit

class LoginScreenView: BaseView {
  
  lazy var appTitleLbl: UILabel = {
    let appTitleLbl = UILabel()
    appTitleLbl.text = "Personal Menager"
    appTitleLbl.textAlignment = .center
    appTitleLbl.font = appTitleLbl.font.withSize(24)
    appTitleLbl.textColor = .tintColor
    appTitleLbl.translatesAutoresizingMaskIntoConstraints = false
    return appTitleLbl
  }()
  
  lazy var emailTextField: TextFieldComponent = {
    let emailTextField = TextFieldComponent(placeholder: "Insert your email", secureText: false)
    return emailTextField
  }()
  
  lazy var passwordTextField: TextFieldComponent = {
    let passwordTextField = TextFieldComponent(placeholder: "Insert your password", secureText: false)
    return passwordTextField
  }()

  lazy var forgotPasswordButton: UIButton = {
    let forgotPasswordButton = UIButton()
    forgotPasswordButton.setTitle("Forgot your password?", for: .normal)
    forgotPasswordButton.setTitleColor(UIColor.systemGray, for: .normal)
    forgotPasswordButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
    forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
    return forgotPasswordButton
  }()
  
  lazy var initialButton: UIButton = {
    let initialButton = UIButton()
    initialButton.setTitle("Go to your stuff", for: .normal)
    initialButton.backgroundColor = UIColor.tintColor
    initialButton.layer.cornerRadius = 6
    initialButton.layer.borderWidth = 1
    initialButton.layer.borderColor = UIColor.systemGray5.cgColor
    initialButton.translatesAutoresizingMaskIntoConstraints = false
    return initialButton
  }()
  
  lazy var registerLbl: UILabel = {
    let registerLbl = UILabel()
    registerLbl.text = "Don't have an account?"
    registerLbl.translatesAutoresizingMaskIntoConstraints = false
    return registerLbl
  }()
  
  lazy var registerButton: UIButton = {
    let registerButton = UIButton()
    registerButton.setTitle("Register", for: .normal)
    registerButton.setTitleColor(UIColor.tintColor, for: .normal)
    registerButton.translatesAutoresizingMaskIntoConstraints = false
    return registerButton
  }()
  
  
  override func addSubviews() {
    addSubview(appTitleLbl)
    addSubview(emailTextField)
    addSubview(passwordTextField)
    addSubview(forgotPasswordButton)
    addSubview(initialButton)
    addSubview(registerLbl)
    addSubview(registerButton)
  }
  
  override func addConstraints() {
    NSLayoutConstraint.activate([
      appTitleLbl.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
      appTitleLbl.widthAnchor.constraint(equalToConstant: 200),
      appTitleLbl.heightAnchor.constraint(equalToConstant: 40),
      appTitleLbl.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      emailTextField.topAnchor.constraint(equalTo: appTitleLbl.bottomAnchor, constant: 60),
      emailTextField.widthAnchor.constraint(equalToConstant: 360),
      emailTextField.heightAnchor.constraint(equalToConstant: 50),
      emailTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
      passwordTextField.widthAnchor.constraint(equalToConstant: 360),
      passwordTextField.heightAnchor.constraint(equalToConstant: 50),
      passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor),
      forgotPasswordButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
      forgotPasswordButton.widthAnchor.constraint(equalToConstant: 170),
      forgotPasswordButton.heightAnchor.constraint(equalToConstant: 30),
      
      initialButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 70),
      initialButton.widthAnchor.constraint(equalToConstant: 250),
      initialButton.heightAnchor.constraint(equalToConstant: 60),
      initialButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      registerLbl.topAnchor.constraint(equalTo: initialButton.bottomAnchor, constant: 50),
      registerLbl.widthAnchor.constraint(equalToConstant: 180),
      registerLbl.heightAnchor.constraint(equalToConstant: 40),
      registerLbl.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      registerButton.topAnchor.constraint(equalTo: registerLbl.bottomAnchor),
      registerButton.widthAnchor.constraint(equalToConstant: 100),
      registerButton.heightAnchor.constraint(equalToConstant: 10),
      registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
  }
}
