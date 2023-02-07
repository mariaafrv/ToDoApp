import UIKit

class ProfileScreenView: BaseView {
    
    let cellId = "cellId"
    

    
    lazy var userIcon: UIImageView = {
        let userIcon = UIImageView()
        userIcon.image = UIImage(systemName: "person.crop.circle.badge.plus")
        return userIcon
    }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.font = .systemFont(ofSize: 24)
        nameLabel.text = "Nome do usuário"
        nameLabel.textAlignment = .center
        return nameLabel
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: bounds)
        tableView.register(ProfileListTableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.backgroundColor = .systemGray6
        return tableView
    }()
    
    
    override func addSubviews() {
        addSubview(userIcon)
        addSubview(nameLabel)
        addSubview(tableView)
    }
    
    override func addConstraints() {
        userIcon.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 130, height: 120))
        
        userIcon.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        nameLabel.anchor(
            top: userIcon.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 2, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 30))
        
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        tableView.anchor(
            top: nameLabel.bottomAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
    }
}
