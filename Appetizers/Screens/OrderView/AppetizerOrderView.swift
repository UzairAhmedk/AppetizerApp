//
//  AppetizerOrderView.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-06.
//

import SwiftUI

struct AppetizerOrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationView {
            ZStack{
                VStack{
                    List{
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("print")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    SwiftUIView(imageName: "empty-order", message: "You have No orders")
                }
            }
                .navigationTitle("My Order")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

#Preview {
    AppetizerOrderView()
         .environmentObject(Order())
    
}
