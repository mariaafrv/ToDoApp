//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

class AppointmentsViewController: UIViewController {
    
    let customView = AppointmentsScreenView()
    private var cellId = "cellId"
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.collectionView.delegate = self
        customView.collectionView.dataSource = self
        customView.collectionView.register(AppointmentsCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }

}

extension AppointmentsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AppointmentsCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20 , height: 70)
    }
}
