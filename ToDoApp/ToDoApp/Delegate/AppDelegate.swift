//
//  AppDelegate.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?

        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.makeKeyAndVisible()
            window?.backgroundColor = .systemGray6
            window?.tintColor = .systemRed
            window?.rootViewController = UINavigationController(rootViewController: ViewController())
            return true
        }

}

