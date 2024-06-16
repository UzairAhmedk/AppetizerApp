//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-06.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        
        ZStack{
            NavigationView {
                
                List(viewModel.appetizers) { appetizer in
                 AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppertizer = appetizer
                        }
                }
                .navigationTitle("Appetizer")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear() {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail{
                AppetizerDetailView(appetizer: viewModel.selectedAppertizer!, isShowingDetail: $viewModel.isShowingDetail)
            }
            if viewModel.isloading {
                LoadingView()
            }

        }
        .alert(item: $viewModel.alertItem) {
            alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
