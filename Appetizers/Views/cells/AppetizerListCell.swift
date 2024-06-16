//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-06.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
      
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.medium)
            }
            .padding(.leading)
            
            Spacer()
        }
        .padding(.vertical, 8) // Add vertical padding for better spacing
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
