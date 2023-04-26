//
//  Asdress.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 23.04.2023.
//

import Foundation

class Address {
    
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: Geo
    
    init(street: String, suite: String, city: String, zipcode: String, geo: Geo) {
        self.street = street
        self.suite = suite
        self.city = city
        self.zipcode = zipcode
        self.geo = geo
    }
}
