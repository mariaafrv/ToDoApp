//
//  AppointmentsScreenView.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

class AppointmentsScreenView: BaseView {
    
    let cellId = "cellId"
    
    let appointmentsLbl: UILabel = {
        let tasksLbl = UILabel()
        tasksLbl.text = "My Appointments"
        tasksLbl.font = tasksLbl.font.withSize(26)
        tasksLbl.textColor = .tintColor
        return tasksLbl
    }()
    
    let addAppointmentsTextField: UITextField = {
        let addAppointment = UITextField()
        addAppointment.backgroundColor = .systemGray4
        addAppointment.layer.cornerRadius = 6
        addAppointment.layer.borderWidth = 1
        addAppointment.layer.borderColor = UIColor.systemGray.cgColor
        addAppointment.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: addAppointment.frame.height))
        addAppointment.leftViewMode = .always
        addAppointment.placeholder = "Enter your appointments"
        return addAppointment
    }()
    
    let addButton: UIButton = {
        let addButton = UIButton()
        let plusSign = UIImage(systemName: "plus")
        addButton.setImage(plusSign, for: .normal)
        return addButton
    }()
    
    
    let collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame:.zero,
            collectionViewLayout: UICollectionViewFlowLayout()
        )
        return collectionView
    }()
    
    override func addSubviews() {
        addSubview(appointmentsLbl)
        addSubview(addAppointmentsTextField)
        addSubview(addButton)
        addSubview(collectionView)
    }
    
    override func addConstraints() {
        appointmentsLbl.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: addAppointmentsTextField.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 30))
        
        addAppointmentsTextField.anchor(
            top: appointmentsLbl.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 50))
        
        addAppointmentsTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addButton.anchor(
            top: addAppointmentsTextField.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: addAppointmentsTextField.trailingAnchor,
            padding: .init(top: 5, left: 2, bottom: 0, right: 0),
            size: .init(width: 60, height: 40))
        
        collectionView.anchor(
            top: addAppointmentsTextField.bottomAnchor,
            leading: addAppointmentsTextField.leadingAnchor,
            bottom: nil,
            trailing: addAppointmentsTextField.trailingAnchor,
            padding: .init(top: 10, left: 2, bottom: 0, right: 2),
            size: .init(width: 360, height: 500))
        
    }

}
