//
//  PostTableVC.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import UIKit

class PostTableVC: UITableViewController {

    //MARK: Объекты для теста таблицы
    let post1 = Post(userId: 1, id: 1, title: "post1", body: "body1")
    let post2 = Post(userId: 1, id: 2, title: "post2", body: "body2")
    let post3 = Post(userId: 2, id: 3, title: "post3", body: "body3")
    let post4 = Post(userId: 2, id: 4, title: "post4", body: "body4")
    let post5 = Post(userId: 3, id: 5, title: "post5", body: "body5")
    let post6 = Post(userId: 3, id: 6, title: "post6", body: "body6")
    let post7 = Post(userId: 4, id: 7, title: "post7", body: "body7")
    let post8 = Post(userId: 4, id: 8, title: "post8", body: "body8")
    lazy var posts = [post1, post2, post3, post4, post5, post6, post7, post8]
    
    //MARK: Properties
    
    //MARK: - View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    
    //MARK: - SetupUI
    private func setupUI() {
        configureSelf()
    }
    
    private func configureSelf() {
        tableView.register(PostTableCell.self, forCellReuseIdentifier: PostTableCell.identifier)
        navigationItem.title = "Posts"
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableCell.identifier, for: indexPath) as! PostTableCell
        cell.setupUI()
        cell.titleText = post.title
        cell.bodyText = post.body
        return cell
    }
    
}
