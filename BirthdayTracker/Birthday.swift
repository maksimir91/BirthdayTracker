//
//  Birthday.swift
//  BirthdayTracker
//
//  Created by Stanislav Shut on 09.05.2024.
//

import Foundation

class Birthday {
    let firstName: String
    let lastName: String
    var birthDate: Date
    
    init(firstName: String, lastName: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
    }
}
