import UIKit

class LoginScreenView: BaseView {

    lazy var appTitleLbl: UILabel = {
        let appTitleLbl = UILabel()
        appTitleLbl.text = "Personal Menager"
        appTitleLbl.textAlignment = .center
        appTitleLbl.font = appTitleLbl.font.withSize(24)
        appTitleLbl.textColor = .tintColor
        return appTitleLbl
    }()
    
    lazy var emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "Insert your email"
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.systemGray4.cgColor
        emailTextField.layer.cornerRadius = 8
        emailTextField.layer.masksToBounds = true
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        emailTextField.leftViewMode = .always
        return emailTextField
    }()
        
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Insert your password"
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.systemGray4.cgColor
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.layer.masksToBounds = true
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: passwordTextField.frame.height))
        passwordTextField.leftViewMode = .always
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("Forgot your password?", for: .normal)
        forgotPasswordButton.setTitleColor(UIColor.systemGray, for: .normal)
        forgotPasswordButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        return forgotPasswordButton
    }()
    
    lazy var initialButton: UIButton = {
        let initialButton = UIButton()
        initialButton.setTitle("Go to your stuff", for: .normal)
        initialButton.backgroundColor = UIColor.tintColor
        initialButton.layer.cornerRadius = 6
        initialButton.layer.borderWidth = 1
        initialButton.layer.borderColor = UIColor.systemGray5.cgColor
        return initialButton
    }()
    
    lazy var registerLbl: UILabel = {
        let registerLbl = UILabel()
        registerLbl.text = "Don't have an account?"
        return registerLbl
    }()
    
    lazy var registerButton: UIButton = {
        let registerButton = UIButton()
        registerButton.setTitle("Register", for: .normal)
        registerButton.setTitleColor(UIColor.tintColor, for: .normal)
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
        appTitleLbl.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 100, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
        appTitleLbl.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        emailTextField.anchor(
            top: appTitleLbl.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 60, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 50))
        
        emailTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        passwordTextField.anchor(
            top: emailTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 15, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 50))
        
        passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        forgotPasswordButton.anchor(
            top: passwordTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: passwordTextField.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 170, height: 30))
        
        initialButton.anchor(
            top: passwordTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 70, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 60))
        
        initialButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        registerLbl.anchor(
            top: initialButton.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: 180, height: 40))
        
        registerLbl.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        registerButton.anchor(
            top: registerLbl.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 100, height: 10))
        
        registerButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }

}
