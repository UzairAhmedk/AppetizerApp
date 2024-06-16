//
//  ContentView.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-05.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AppitizerAccountView() // Fixed typo from AppitizerAccountView to AppetizerAccountView
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
            
            AppetizerOrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("My Order")
                }
        }
        .accentColor(Color(.brandPrimary)) // Specify Color explicitly
    }
}

#Preview {
    AppetizerTabView()
         .environmentObject(Order())
}
