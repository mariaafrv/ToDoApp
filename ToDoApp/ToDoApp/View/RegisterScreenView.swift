
import UIKit

class RegisterScreenView: BaseView {
    
    
    lazy var registerLbl: UILabel = {
        let registerLbl = UILabel()
        registerLbl.text = "Create your account"
        registerLbl.textColor = .tintColor
        registerLbl.font = .systemFont(ofSize: 24)
        return registerLbl
    }()
    
    lazy var registerDescription: UILabel = {
        let registerDescription = UILabel()
        registerDescription.text = "Please enter your personal informations"
        registerDescription.numberOfLines = 0
        registerDescription.textAlignment = .center
        return registerDescription
    }()

    lazy var nameTextField: UITextField = {
        let nameTextField = UITextField()
        nameTextField.placeholder = "Enter your first name"
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.cornerRadius = 8
        nameTextField.layer.borderColor = UIColor.systemGray4.cgColor
        nameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: nameTextField.frame.height))
        nameTextField.leftViewMode = .always
        nameTextField.autocorrectionType = .no
        nameTextField.autocapitalizationType = .none
        return nameTextField
    }()
    
    lazy var lastNameTextField: UITextField = {
        let lastNameTextField = UITextField()
        lastNameTextField.placeholder = "Enter your last name"
        lastNameTextField.layer.borderWidth = 2
        lastNameTextField.layer.cornerRadius = 8
        lastNameTextField.layer.borderColor = UIColor.systemGray4.cgColor
        lastNameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: lastNameTextField.frame.height))
        lastNameTextField.leftViewMode = .always
        lastNameTextField.autocapitalizationType = .none
        lastNameTextField.autocorrectionType = .no
        return lastNameTextField
    }()
    
    lazy var emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "Enter your email"
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.cornerRadius = 8
        emailTextField.layer.borderColor = UIColor.systemGray4.cgColor
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        emailTextField.leftViewMode = .always
        emailTextField.autocapitalizationType = .none
        emailTextField.autocorrectionType = .no
        return emailTextField
    }()
    
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.layer.borderColor = UIColor.systemGray4.cgColor
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: passwordTextField.frame.height))
        passwordTextField.leftViewMode = .always
        passwordTextField.isSecureTextEntry = true
        passwordTextField.autocorrectionType = .no
        passwordTextField.autocapitalizationType = .none
        return passwordTextField
    }()
    
    lazy var registerButton: UIButton = {
        let registerButton = UIButton()
        registerButton.setTitle("Register", for: .normal)
        registerButton.backgroundColor = .tintColor
        registerButton.layer.cornerRadius = 6
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.systemGray5.cgColor
        return registerButton
    }()
    
    override func addSubviews() {
        backgroundColor = .systemGray6
        addSubview(registerLbl)
        addSubview(registerDescription)
        addSubview(nameTextField)
        addSubview(lastNameTextField)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(registerButton)
    }
    
    override func addConstraints() {
        
        registerLbl.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 35, left: 0, bottom: 0, right: 0),
            size: .init(width: 210, height: 30))
        
        registerLbl.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        registerDescription.anchor(
            top: registerLbl.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 15, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 50))
        
        registerDescription.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        nameTextField.anchor(
            top: registerDescription.bottomAnchor,
            leading: emailTextField.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 25, left: 0, bottom: 0, right: 0),
            size: .init(width: 180, height: 50))
        
        
        lastNameTextField.anchor(
            top: nameTextField.topAnchor,
            leading: nameTextField.trailingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 2, bottom: 0, right: 0),
            size: .init(width: 180, height: 50))
        
        emailTextField.anchor(
            top: nameTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 50))
        
        emailTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        passwordTextField.anchor(
            top: emailTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 50))
        
        passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        registerButton.anchor(
            top: nil,
            leading: nil,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: nil,
            padding: .init(top: 60, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 60))
        
        registerButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
}
}
