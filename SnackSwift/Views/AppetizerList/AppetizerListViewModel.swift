//
//  AppetizerListViewModel.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-15.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    func loadAppetisers() {
        NetworkManager.shared.getAppetizers { result in
            self.isLoading = true
            DispatchQueue.main.async {
                self.isLoading = false
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error{
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
