//
//  OverLay.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-10.
//

import SwiftUI

struct OverLay: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                . foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    OverLay()
}
