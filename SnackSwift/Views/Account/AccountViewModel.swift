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
}
