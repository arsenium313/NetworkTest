//
//  User.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 23.04.2023.
//

import Foundation

class User {
    
    //MARK: Properties
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Address
    var phone: String
    var website: String
    var company: Company
    
    
    //MARK: - Init
    init(id: Int, name: String, username: String, email: String, address: Address,
         phone: String, website: String, company: Company) {
        self.id = id
        self.name = name
        self.username = username
        self.email = email
        self.address = address
        self.phone = phone
        self.website = website
        self.company = company
    }
    
    //MARK: - Functions
    func createText() -> String {
        let text =
        """
            Name = \(self.name)
            User Name = \(self.username)
            Email = \(self.email)
        
            Address:
            Street = \(self.address.street)
            Suite = \(self.address.suite)
            City = \(self.address.city)
            ZipCode = \(self.address.zipcode)
            Geo = lat: \(self.address.geo.lat), lng: \(self.address.geo.lng)
        
            Phone = \(self.phone)
            Website = \(self.website)
        
            Company:
            Name = \(self.company.name)
            CatchPhrase = \(self.company.catchPhrase)
            BS = \(self.company.bs)
        """
        return text
    }
}
