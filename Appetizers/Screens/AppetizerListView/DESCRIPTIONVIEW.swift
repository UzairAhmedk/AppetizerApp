//
//  DESCRIPTIONVIEW.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-10.
//

import SwiftUI

struct DESCRIPTIONVIEW: View {
    
    let title: String
    let theNumber: String
    
    var body: some View {
        VStack(spacing: 10) {
            Text("title")
                .bold()
                .font(.caption)
            Text(theNumber)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    DESCRIPTIONVIEW(title: "test", theNumber: "test")
}
