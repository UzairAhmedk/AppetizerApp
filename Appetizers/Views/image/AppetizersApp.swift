//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-05.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
