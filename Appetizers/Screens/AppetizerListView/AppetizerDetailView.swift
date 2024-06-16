//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-09.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
      
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack (spacing: 40)  {
                    DESCRIPTIONVIEW(title: "Calories", theNumber: "\(appetizer.calories)")
                    DESCRIPTIONVIEW(title: "Protien", theNumber: "\(appetizer.protein)")
                    DESCRIPTIONVIEW(title: "Carbs", theNumber: "\(appetizer.carbs)")
                }
            }
            
            Spacer()
            Button {
                order.items.append(appetizer)
                isShowingDetail = false
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 40)
            
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            OverLay()
            } , alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
