import UIKit

class LoginViewController: UIViewController {
    
    let customView = LoginScreenView()
    var user: User?
    
    override func loadView() {
        let view = customView
        self.view = view
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.initialButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        customView.registerButton.addTarget(self, action: #selector(goToRegister), for: .touchUpInside)
    }
    
    @objc func didTapButton(){
        
        let nextViewController = ToDoViewController()
        nextViewController.title = "Taks"
        let secondViewController = ProfileViewController()
        secondViewController.title = "Profile"
        
        
        let tabBar = UITabBarController()
        tabBar.setViewControllers([nextViewController, secondViewController], animated: false)
        tabBar.tabBar.backgroundColor = .systemGray5
        
        let images = ["house", "person.crop.circle"]
        
        guard let items = tabBar.tabBar.items else {return}
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBar.modalPresentationStyle = .fullScreen
        
        if user?.email != customView.emailTextField.text ?? stringLiteral ||
            user?.password != customView.passwordTextField.text ?? stringLiteral {
            
            Alert.showAlert(controller: self, titulo: "Ops!", mensagem: "E-mail ou senha estão incorretos.", actions: [UIAlertAction(title: "OK", style: .default)], preferredStyle: .alert)
            
        } else {
            navigationController?.pushViewController(tabBar, animated: true)
        }
    }
    
    @objc func goToRegister(){
        let registerViewController = RegisterViewController()
        
        if let sheet = registerViewController.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
            
        }
        
        present(registerViewController, animated: true)
    }
    
    func getData(user: User) {
        self.user = user
    }
}









