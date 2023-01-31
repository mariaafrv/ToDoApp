//
//  RegisterViewController.swift
//  ToDoApp
//
//  Created by unicred on 31/01/23.
//

import UIKit



class RegisterViewController: UIViewController {

    let customView = RegisterScreenView()
    let viewModel = RegisterViewModel()
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.registerButton.addTarget(self, action: #selector(createAccount), for: .touchUpInside)
    }
    
    @objc func createAccount(){
        viewModel.createAccount(
            firstName: customView.nameTextField.text ?? stringLiteral,
            lastName: customView.lastNameTextField.text ?? stringLiteral,
            email: customView.emailTextField.text ?? stringLiteral,
            password: customView.passwordTextField.text ?? stringLiteral) { user in
                self.navigationToLogin(user)
        }
    }
    
    func navigationToLogin(_ user: User) {
        let loginViewController = LoginViewController()
        loginViewController.getData(user: user)
        dismiss(animated: true)
    }
}
