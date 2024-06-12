//
//  ViewController.swift
//  To-Do
//
//  Created by Ejder Dağ on 12.06.2024.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Sabah kalk", "Kütüphaneye Git", "Swift Çalış"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Tableview data source methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "ToDoItemCell")
        var content = cell.defaultContentConfiguration()
        content.text = itemArray[indexPath.row]
        cell.contentConfiguration = content
        return cell
        
    }

}

