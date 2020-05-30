//
//  User.swift
//  WorkPad
//
//  Created by Amy Ha on 13/05/2020.
//  Copyright © 2020 Amy Ha. All rights reserved.
//

import Foundation

class User {
    var firstName: String
    var surname: String
    var dob: Date?
    var email: String
    var phone: String?
    
    init(firstName: String, surname: String, dob: Date, email: String, phone: String) {
        self.firstName = firstName
        self.surname = surname
        self.dob = dob
        self.email = email
        self.phone = phone
    }
    
}
