//
//  Order.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-11.
//

import SwiftUI

final class Order: ObservableObject {
    
  
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) {
            $0 + $1.price
        }
    }
    
}
