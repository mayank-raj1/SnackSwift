//
//  ContentView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-13.
//

import SwiftUI

struct SnackSwiftTabView: View {
    var body: some View {
        TabView{
            AppetizerListView().tabItem { 
                Image(systemName: "menucard")
                Text("Menu")
            }
            OrderView().tabItem {
                Image(systemName: "menucard")
                Text("Menu")
            }
            AccountView().tabItem {
                Image(systemName: "menucard")
                Text("Menu")
            }
        }.tint(Color.orange)
    }
}

#Preview {
    SnackSwiftTabView()
}
