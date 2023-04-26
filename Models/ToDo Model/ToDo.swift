//
//  ToDo.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import Foundation

class ToDo {
    
    //MARK: Properties
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
    
    
    //MARK: Init
    init(userId: Int, id: Int, title: String, completed: Bool) {
        self.userId = userId
        self.id = id
        self.title = title
        self.completed = completed
    }
}

