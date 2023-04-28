import UIKit

class ProfileListTableViewCell: BaseTableViewCell {
  
  var setOption: (String, String)? {
    didSet {
      optionLabel.text = setOption?.1
      optionImage.image = UIImage(systemName: setOption!.0)
    }
  }
  
  lazy var cell: UIView = {
    let cell = UIView()
    cell.backgroundColor = .systemGray6
    cell.translatesAutoresizingMaskIntoConstraints = false
    return cell
  }()
  
  lazy var optionImage: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(systemName: "")
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  
  lazy var optionLabel: UILabel = {
    let optionLabel = UILabel()
    optionLabel.text = "aaaaaa"
    optionLabel.translatesAutoresizingMaskIntoConstraints = false
    return optionLabel
  }()
  
  override func addSubviews() {
    addSubview(cell)
    addSubview(optionImage)
    addSubview(optionLabel)
  }
  
  override func addConstraints() {
    NSLayoutConstraint.activate([
      cell.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
      cell.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
      cell.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
      cell.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
      cell.widthAnchor.constraint(equalToConstant: frame.width),
      cell.heightAnchor.constraint(equalToConstant: 50),
      
      optionImage.topAnchor.constraint(equalTo: cell.topAnchor, constant: 5),
      optionImage.leadingAnchor.constraint(equalTo: cell.leadingAnchor, constant: 10),
      optionImage.widthAnchor.constraint(equalToConstant: 25),
      optionImage.heightAnchor.constraint(equalToConstant: 25),
      
      optionLabel.topAnchor.constraint(equalTo: cell.topAnchor, constant: 5),
      optionLabel.leadingAnchor.constraint(equalTo: optionImage.trailingAnchor, constant: 15),
      optionLabel.widthAnchor.constraint(equalToConstant: 200),
      optionLabel.heightAnchor.constraint(equalToConstant: 30)
    ])
  }
}
