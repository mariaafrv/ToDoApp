import Foundation
import UIKit

class TextFieldComponent: BaseView {
  let placeholder: String
  let secureText: Bool
  let text: String = ""
  let updateText: [(Bool) -> String]
  
  lazy var textFieldComponent: UITextField = {
    let textFieldComponent = UITextField()
    textFieldComponent.placeholder = placeholder
    textFieldComponent.layer.borderWidth = 2
    textFieldComponent.layer.borderColor = UIColor.systemGray4.cgColor
    textFieldComponent.layer.cornerRadius = 8
    textFieldComponent.layer.masksToBounds = true
    textFieldComponent.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textFieldComponent.frame.height))
    textFieldComponent.leftViewMode = .always
    textFieldComponent.autocorrectionType = .no
    textFieldComponent.autocapitalizationType = .none
    textFieldComponent.translatesAutoresizingMaskIntoConstraints = false
    return textFieldComponent
  }()
  
  override func addSubviews() {
    addSubview(textFieldComponent)
  }
  
  override func addConstraints() {
    NSLayoutConstraint.activate([
      textFieldComponent.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
      textFieldComponent.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
      textFieldComponent.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
      textFieldComponent.widthAnchor.constraint(equalToConstant: 360),
      textFieldComponent.heightAnchor.constraint(equalToConstant: 50),
      textFieldComponent.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
  }
  
  init(placeholder: String, secureText: Bool) {
    self.placeholder = placeholder
    self.secureText = secureText
    super.init(frame: .zero)
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
