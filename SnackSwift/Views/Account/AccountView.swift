//
//  AccountView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-13.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    var body: some View {
        NavigationStack{
            Form{
                Section("Personal Info") {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Mail", text: $viewModel.email).keyboardType(.emailAddress).autocorrectionDisabled()
                    DatePicker("Bithday", selection: $viewModel.birthday, displayedComponents: .date).datePickerStyle(.compact)
                    Button("Save Changes") {
                        //
                    }
                }
                
                Section("Prefrences") {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNap)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }
                
            }.navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
