//
//  ViewController.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    let customView = HomeScreenView()
    
    
    override func loadView() {
        let view = customView
        self.view = view
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.initialButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
        
    @objc func didTapButton(){
       
        let nextViewController = ToDoViewController()
        nextViewController.title = "Taks"
        let secondViewController = AppointmentsViewController()
        secondViewController.title = "Appointments"
        
        
        let tabBar = UITabBarController()
        tabBar.setViewControllers([nextViewController, secondViewController], animated: false)
        tabBar.tabBar.backgroundColor = .systemGray5
        
        let images = ["house", "plus"]
        
        guard let items = tabBar.tabBar.items else {return}
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBar.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(tabBar, animated: true)
    }
    }
    
  
    
   
    
    
    


