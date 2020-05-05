//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Alyssa Altimas on 5/4/20.
//  Copyright © 2020 Alyssa Altimas. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var proviousVC = ToDoTableViewController()
    
    @IBOutlet weak var titletextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        if let titleText = titletextField.text {
        toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        
        //update toDos array with new object
        proviousVC.toDos.append(toDo)
        proviousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
