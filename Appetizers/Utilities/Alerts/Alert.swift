//
//  Alert.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-08.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidURL       = AlertItem(    title: Text("invalid URL Input"),
                                                message: Text("Issue with the URL, contact support"),
                                                dismissButton: .default(Text("ok")))
    
    static let invalidResponse  = AlertItem(    title: Text("invalid Response Input"),
                                                message: Text("Issue with the Response, contact support"),
                                                dismissButton: .default(Text("ok")))
    
    static let invalidData      = AlertItem(    title: Text("invalid Data Input"),
                                                message: Text("Issue with the Data, contact support"),
                                                dismissButton: .default(Text("ok")))
    
    static let unableToComplete = AlertItem(    title: Text("invalid Completion Input"),
                                                message: Text("Connect to the internet"),
                                                dismissButton: .default(Text("ok")))
    
    
    static let invalidForm = AlertItem(    title: Text("invalid Form"),
                                                message: Text("Please make sure all fields have been filled out"),
                                                dismissButton: .default(Text("ok")))
    
    static let invalidEmail = AlertItem(    title: Text("invalid Email"),
                                                message: Text("Please Make sure your email is correct"),
                                                dismissButton: .default(Text("ok")))
    
    static let UserSavedSucc = AlertItem(    title: Text("Profile Saved"),
                                                message: Text("Ur profile is saved"),
                                                dismissButton: .default(Text("ok")))
    
    static let UserSavednot = AlertItem(    title: Text("Profile Not Saved"),
                                                message: Text("Ur profile is not saved"),
                                                dismissButton: .default(Text("ok")))
    

   
}

