//
//  User.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/25/23.
//

import Foundation

struct User: Codable {

    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthDate: Date = Date()
    var extraNapkins: Bool = false
    var utensils: Bool = false

}
