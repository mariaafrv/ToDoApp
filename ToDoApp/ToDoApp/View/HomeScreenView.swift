//
//  HomeScreenView.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

class HomeScreenView: BaseView {

    let appTitleLbl: UILabel = {
        let appTitleLbl = UILabel()
        appTitleLbl.text = "Personal Menager"
        appTitleLbl.textAlignment = .center
        appTitleLbl.font = appTitleLbl.font.withSize(24)
        appTitleLbl.textColor = .systemBlue
        return appTitleLbl
    }()
    
    let initialButton: UIButton = {
        let initialButton = UIButton()
        initialButton.setTitle("Go to your stuff", for: .normal)
        initialButton.backgroundColor = .systemGray
        initialButton.layer.cornerRadius = 6
        initialButton.layer.borderWidth = 1
        initialButton.layer.borderColor = UIColor.systemGray.cgColor
        return initialButton
    }()
    
    
    override func addSubviews() {
        addSubview(appTitleLbl)
        addSubview(initialButton)
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
        
        initialButton.anchor(
            top: appTitleLbl.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 60, left: 0, bottom: 0, right: 0),
            size: .init(width: 350, height: 60))
        
        initialButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }

}
