//
//  AccountViewModel.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-17.
//

import Foundation

final class AccountViewModel: ObservableObject{
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var birthday: Date = Date.now
    @Published var extraNap: Bool = false
    @Published var frequentRefills: Bool = false
    
    @Published var alertItem: AlertItem?
    @Published var isShowing = false
    
    private var validateFrom:Bool {
        if firstName.isEmpty && lastName.isEmpty && email.isEmpty {
            alertItem = AlertContext.incompleteFields
            return false
        }
        if !email.isValidEmail {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    func setUser() {
        if validateFrom{
            print("Yep")
        }
    }
}
