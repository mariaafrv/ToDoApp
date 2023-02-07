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
        return cell
    }()
    
    lazy var optionImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "")
        return image
    }()
    
    lazy var optionLabel: UILabel = {
        let optionLabel = UILabel()
        optionLabel.text = "aaaaaa"
        return optionLabel
    }()
    
    override func addSubviews() {
        addSubview(cell)
        addSubview(optionImage)
        addSubview(optionLabel)
    }
    
    override func addConstraints() {
        cell.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 15, left: 0, bottom: 0, right: 0),
            size: .init(width: frame.width, height: 50))
        
        optionImage.anchor(
            top: cell.topAnchor,
            leading: cell.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 5, left: 10, bottom: 0, right: 0),
            size: .init(width: 25, height: 25))
        
        optionLabel.anchor(
            top: cell.topAnchor,
            leading: optionImage.trailingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 5, left: 15, bottom: 0, right: 0),
            size: .init(width: 200, height: 30))
    }
}
