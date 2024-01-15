//
//  AppetizerListView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-13.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel: AppetizerListViewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack{
            NavigationStack{
                List(viewModel.appetizers, rowContent: { appetizer in
                    AppetizerCellView(appetizer: appetizer)
                }).navigationTitle("🥗 Menu")
            }.onAppear(perform: {
                viewModel.loadAppetisers()
            }).alert(item: $viewModel.alertItem) { aleartItem in
                Alert(title: aleartItem.title, message: aleartItem.message, dismissButton: aleartItem.dissmissbutton)
            }
            
            if viewModel.isLoading{ ProgressView().tint(Color.orange).scaleEffect(CGSize(width: 2.0, height: 2.0))
            }
            
        }
    }
    
    
}

#Preview {
    AppetizerListView()
} 

