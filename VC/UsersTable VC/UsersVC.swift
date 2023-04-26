//
//  ViewController.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 17.04.2023.
//

import UIKit

class UsersVC: UITableViewController {

    //MARK: Объекты для теста таблицы
    var user1 = User(id: 1, name: "User1", username: "UserName1", email: "user1@mail.com",
                     address: Address(street: "user1Street", suite: "User1Suite", city: "City1", zipcode: "zipCode1", geo: Geo(lat: "lat1", lng: "Lng1")),
                     phone: "phone1", website: "website1", company: Company(name: "company1", catchPhrase: "phrase1", bs: "bs1"))
    var user2 = User(id: 2, name: "User2", username: "UserName2", email: "user2@mail.com",
                     address: Address(street: "user2Street", suite: "User2Suite", city: "City2", zipcode: "zipCode2", geo: Geo(lat: "lat2", lng: "Lng2")),
                     phone: "phone2", website: "website2", company: Company(name: "company2", catchPhrase: "phrase2", bs: "bs2"))
    var user3 = User(id: 3, name: "User3", username: "UserName3", email: "user3@mail.com",
                     address: Address(street: "user3Street", suite: "User3Suite", city: "City3", zipcode: "zipCode3", geo: Geo(lat: "lat3", lng: "Lng3")),
                     phone: "phone3", website: "website3", company: Company(name: "company3", catchPhrase: "phrase3", bs: "bs3"))
    var user4 = User(id: 4, name: "User4", username: "UserName4", email: "user4@mail.com",
                     address: Address(street: "user4Street", suite: "User4Suite", city: "City4", zipcode: "zipCode4", geo: Geo(lat: "lat4", lng: "Lng4")),
                     phone: "phone4", website: "website4", company: Company(name: "company4", catchPhrase: "phrase4", bs: "bs4"))
    
    lazy var users = [user1, user2, user3, user4]
    
    
    //MARK: Properies
   // private var tableView: UITableView! = nil
    
    
    //MARK: - View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setupUI()
    }

    //MARK: - SetupUI
    private func setupUI() {
        configureTableView()
        tableView.register(UserCell.self, forCellReuseIdentifier: UserCell.id)
    }
    
    private func configureTableView() {
    
        
        
        
       
    }
    
}

//MARK: - TableView DataSource, Delegate
extension UsersVC  {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = users[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: UserCell.id, for: indexPath) as! UserCell
        cell.setupUI()
        cell.name = user.name
        cell.email = user.email
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(UserVC(user: users[indexPath.row]), animated: true)
    }
    
    
}

