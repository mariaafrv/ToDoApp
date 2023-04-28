import UIKit

class ProfileScreenView: BaseView {
  
  let cellId = "cellId"
  
  lazy var userIcon: UIImageView = {
    let userIcon = UIImageView()
    userIcon.image = UIImage(systemName: "person.crop.circle.badge.plus")
    userIcon.translatesAutoresizingMaskIntoConstraints = false
    return userIcon
  }()
  
  lazy var nameLabel: UILabel = {
    let nameLabel = UILabel()
    nameLabel.font = .systemFont(ofSize: 24)
    nameLabel.text = "Nome do usuário"
    nameLabel.textAlignment = .center
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    return nameLabel
  }()
  
  lazy var tableView: UITableView = {
    let tableView = UITableView(frame: bounds)
    tableView.register(ProfileListTableViewCell.self, forCellReuseIdentifier: cellId)
    tableView.backgroundColor = .systemGray6
    tableView.translatesAutoresizingMaskIntoConstraints = false
    return tableView
  }()
  
  lazy var logoutButton: UIButton = {
    let logoutButton = UIButton()
    logoutButton.setTitle("Logout", for: .normal)
    logoutButton.layer.borderWidth = 2
    logoutButton.layer.borderColor = UIColor.systemGray6.cgColor
    logoutButton.layer.backgroundColor = UIColor.tintColor.cgColor
    logoutButton.layer.cornerRadius = 5
    logoutButton.translatesAutoresizingMaskIntoConstraints = false
    return logoutButton
  }()
  
  override func addSubviews() {
    addSubview(userIcon)
    addSubview(nameLabel)
    addSubview(tableView)
    addSubview(logoutButton)
  }
  
  override func addConstraints() {
    NSLayoutConstraint.activate([
      userIcon.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
      userIcon.widthAnchor.constraint(equalToConstant: 130),
      userIcon.heightAnchor.constraint(equalToConstant: 120),
      userIcon.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      nameLabel.topAnchor.constraint(equalTo: userIcon.bottomAnchor, constant: 2),
      nameLabel.widthAnchor.constraint(equalToConstant: 30),
      nameLabel.heightAnchor.constraint(equalToConstant: 30),
      nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      
      tableView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
      tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
      tableView.heightAnchor.constraint(equalToConstant: 200),
      
      logoutButton.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 40),
      logoutButton.leadingAnchor.constraint(equalTo: tableView.leadingAnchor),
      logoutButton.widthAnchor.constraint(equalToConstant: frame.width),
      logoutButton.heightAnchor.constraint(equalToConstant: 50),
      logoutButton.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
  }
}
