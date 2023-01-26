//
//  AppointmentsScreenView.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

class AppointmentsScreenView: BaseView {

    let appointmentsLbl: UILabel = {
        let tasksLbl = UILabel()
        tasksLbl.text = "My Appointments"
        tasksLbl.font = tasksLbl.font.withSize(26)
        tasksLbl.textColor = .systemBlue
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
        return addAppointment
    }()
    
    let addButton: UIButton = {
        let addButton = UIButton()
        let plusSign = UIImage(systemName: "plus")
        addButton.setImage(plusSign, for: .normal)
        return addButton
    }()
    
    override func addSubviews() {
        addSubview(appointmentsLbl)
        addSubview(addAppointmentsTextField)
        addAppointmentsTextField.addSubview(addButton)
    }
    
    override func addConstraints() {
        appointmentsLbl.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: addAppointmentsTextField.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 60, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        
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
        
        
    }

}
