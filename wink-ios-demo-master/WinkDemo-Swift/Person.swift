//
//  Person.swift
//  WinkDemo
//
//  Created by Nelson Matias on 9/27/16.
//  Copyright © 2016 Wink Inc. All rights reserved.
//

import UIKit

class Person {
    var Name: String
    var Age: String
    var PhoneNumber: String
    
    init?(name: String, age: String, phoneNumber: String) {
        // Initialize stored properties.
        self.Name = name
        self.Age = age
        self.PhoneNumber = phoneNumber
        
    }
    
}
