import UIKit

class Alert {
 
    let controller: UIViewController
    let title: String
    let message: String
    let firstAction: String
    let secondAction: String
    
    init(controller: UIViewController, title: String, message: String, firstAction: String, secondAction: String) {
        self.controller = controller
        self.title = title
        self.message = title
        self.firstAction = firstAction
        self.secondAction = secondAction
    }
    
    static func showAlert(controller: UIViewController, titulo: String, mensagem: String, actions: [UIAlertAction], preferredStyle: UIAlertController.Style) {
        let alert = UIAlertController(title: titulo, message: mensagem, preferredStyle: preferredStyle)
        
        actions.forEach({ action in alert.addAction(action) })
    
        controller.present(alert, animated: true, completion: nil)
        
    }
    
}
