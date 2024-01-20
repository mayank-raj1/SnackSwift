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
                Image(systemName: "takeoutbag.and.cup.and.straw")
                Text("Order")
            }
            AccountView().tabItem {
                Image(systemName: "person.fill")
                Text("Menu")
            }
        }.tint(Color.orange)
    }
}

//#Preview {
//    SnackSwiftTabView()
//}
