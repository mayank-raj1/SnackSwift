//
//  User.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-19.
//

import Foundation

struct User: Codable{
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthDate = Date.now
    var extraNap: Bool = false
    var frequentRefills: Bool = false
}
