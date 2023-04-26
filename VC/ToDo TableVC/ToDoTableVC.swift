//
//  ToDoTableVC.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import UIKit

class ToDoTableVC: UITableViewController {

    //MARK: Объекты для теста таблицы
    let todo1 = ToDo(userId: 1, id: 1, title: "todo1", completed: true)
    let todo2 = ToDo(userId: 1, id: 2, title: "todo2", completed: false)
    let todo3 = ToDo(userId: 2, id: 3, title: "todo3", completed: true)
    let todo4 = ToDo(userId: 2, id: 4, title: "todo4", completed: false)
    let todo5 = ToDo(userId: 3, id: 5, title: "todo5", completed: true)
    let todo6 = ToDo(userId: 3, id: 6, title: "todo6", completed: false)
    let todo7 = ToDo(userId: 4, id: 7, title: "todo7", completed: true)
    let todo8 = ToDo(userId: 4, id: 8, title: "todo8", completed: false)
    lazy var todos = [todo1, todo2, todo3, todo4, todo5, todo6, todo7, todo8]
    
    //MARK: Properties
    
    
    //MARK: - View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TodoTableCell.self, forCellReuseIdentifier: TodoTableCell.identifier)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TodoTableCell.identifier, for: indexPath) as! TodoTableCell
        cell.setupUI()
        cell.titleText = todo.title
        cell.isCompleted = todo.completed
        return cell
    }
   

}
