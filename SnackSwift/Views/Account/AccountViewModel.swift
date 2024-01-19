//
//  AccountViewModel.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-17.
//
import SwiftUI

final class AccountViewModel: ObservableObject{
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    private var validateFrom:Bool {
            if user.firstName.isEmpty && user.lastName.isEmpty && user.email.isEmpty {
                alertItem = AlertContext.incompleteFields
                return false
            }
            if !user.email.isValidEmail {
                alertItem = AlertContext.invalidEmail
                return false
            }
            return true
        }

    func setUser() {
        if validateFrom{
            do{
                let data = try JSONEncoder().encode(user)
                userData = data
                alertItem = AlertContext.userSaved
            }catch{
                alertItem = AlertContext.userNotSaved
            }
        }
    }
    
    func loadDetails() {
        guard let userData = self.userData else{
            return
        }
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch{
            alertItem = AlertContext.failToLoadDetails
        }
    }
}
