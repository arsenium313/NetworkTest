//
//  Post.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import Foundation

class Post {
    
    //MARK: Properties
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
    //MARK: - Init
    init(userId: Int, id: Int, title: String, body: String) {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
}
