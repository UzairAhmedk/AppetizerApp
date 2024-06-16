//
//  SwiftUIView.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-11.
//

import SwiftUI

struct SwiftUIView: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -130)
       
            
        }
    }
}

#Preview {
    SwiftUIView(imageName: "empty-order", message: "owow")
}
