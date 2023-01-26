//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

class AppointmentsViewController: UIViewController {
    
    let customView = AppointmentsScreenView()
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
