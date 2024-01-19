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
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Mail", text: $viewModel.user.email).keyboardType(.emailAddress).autocorrectionDisabled()
                    DatePicker("Bithday", selection: $viewModel.user.birthDate, displayedComponents: .date).datePickerStyle(.compact)
                    Button("Save Changes") {
                        viewModel.setUser()
                    }
                }
                
                Section("Prefrences") {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNap)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                
            }.navigationTitle("Account").onAppear(perform: {
                viewModel.loadDetails()
            })
                .alert(item: $viewModel.alertItem) { aleartItem in
                    Alert(title: aleartItem.title, message: aleartItem.message, dismissButton: aleartItem.dismissbutton)
                }
        }
    }
}

#Preview {
    AccountView()
}
