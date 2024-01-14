//
//  AppetizerListView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-13.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationStack{
            List(MocData.sampleAppetizers, rowContent: { appetizer in
                AppetizerCellView(appetizer: appetizer)
            }).navigationTitle("🥗 Menu")
        }
    }
    
    func getAppetizers
}

#Preview {
    AppetizerListView()
}

