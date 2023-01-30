//
//  NextViewController.swift
//  ToDoApp
//
//  Created by unicred on 24/01/23.
//

import UIKit

class ToDoViewController: UIViewController {
    
    let customView = ToDoScreenView()
    var tasksArr: [Task] = []
    var viewModel = ToDoViewModel()
    
    private var cellId = "cellId"
    
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.collectionView.delegate = self
        customView.collectionView.dataSource = self
        customView.collectionView.register(ToDoListCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        customView.collectionView.backgroundColor = .systemGray6
        customView.addButton.addTarget(self, action: #selector(addNewTask), for: .touchUpInside)
    }
    
    
    func getTaks() -> Task{
        
        let date = Date()
        let newTask = Task(name: customView.addTaskTextField.text ?? "",
                           urgency: "Easy",
                           description: "",
                           date: date)
        return newTask
    }
    
    @objc func addNewTask(){
        tasksArr.append(getTaks())
        customView.collectionView.reloadData()
    }
    
}

extension ToDoViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tasksArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ToDoListCollectionViewCell
        cell.tasksView = tasksArr[indexPath.item]
        cell.updateTask = { task in
            self.tasksArr[indexPath.item] = task
        }
        
        cell.deleteTask = {
            
            Alert.showAlert(controller: self, titulo: "Remover", mensagem: "Tem certeza que deseja remover sua task?", actions: [
                UIAlertAction(title: "Confirmar", style: .default, handler: { _ in
                    self.tasksArr.remove(at: indexPath.item)
                    collectionView.reloadData()
                }),
                UIAlertAction(title: "Cancelar", style: .default, handler: {(_: UIAlertAction!) in
                })
            ], preferredStyle: .alert)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20 , height: 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let taskDetailsViewController = TaskDetailslViewController()
        let taskDetails = tasksArr[indexPath.item]
        
        taskDetailsViewController.getTaskName(name: taskDetails.name)
        taskDetailsViewController.getTag(tag: taskDetails.urgency)
        taskDetailsViewController.getDesc(name: taskDetails.description)
        taskDetailsViewController.getDate(date: taskDetails.date)
        
        taskDetailsViewController.updateTaskName = { name, tag, desc, date in
            let task = Task(name: name, urgency: tag, description: desc, date: date)
            
            self.tasksArr[indexPath.item] = task
            self.customView.collectionView.reloadData()
            taskDetailsViewController.dismiss(animated: true)
            
        }
        
        present(taskDetailsViewController, animated: true)
    }
    
    
    
}
