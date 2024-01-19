//
//  SnackSwiftApp.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-13.
//

import SwiftUI

@main
struct SnackSwiftApp: App {
    var order: Order = Order()
    var body: some Scene {
        WindowGroup {
            SnackSwiftTabView().environmentObject(order)
        }
    }
}
