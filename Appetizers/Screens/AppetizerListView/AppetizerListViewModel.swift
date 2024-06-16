//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-08.
//

import SwiftUI


final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isloading = false
    @Published var isShowingDetail = false
    @Published var selectedAppertizer: Appetizer?
    
    func getAppetizers() {
        isloading = true
        NetworkManager.shared.gotAppetizers { [self] result in
            DispatchQueue.main.async {
                
                self.isloading = false
                
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }

            }
        }
    }
    
}
