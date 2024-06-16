//
//  User.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-10.
//

import Foundation

struct User: Codable {
    
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var Birthdate       = Date()
    var ExNap           = false
    var FreqRefill      = false
}
