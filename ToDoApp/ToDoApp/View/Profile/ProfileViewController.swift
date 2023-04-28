import UIKit

class ProfileViewController: UIViewController {
    
    let customView = ProfileScreenView()
    
    let options: [(String, String)] = [
        ("person.fill", "Conta"),
        ("pencil", "Perfil"),
        ("checkerboard.shield", "Privacidade e segurança")
    ]
    
    override func loadView() {
        let view = customView
        self.view =  view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
        customView.tableView.register(ProfileListTableViewCell.self, forCellReuseIdentifier: customView.cellId)
    }

}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! ProfileListTableViewCell
        cell.backgroundColor = .systemGray6
        let option = options[indexPath.item]
        cell.setOption = option
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
//
    }
}
