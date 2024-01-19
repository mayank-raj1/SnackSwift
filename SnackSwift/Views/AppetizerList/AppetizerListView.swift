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
                    AppetizerCellView(appetizer: appetizer).onTapGesture {
                        viewModel.detailedShowingAppetizer = appetizer
                        viewModel.isShowingDetailed = true
                    }
                }).navigationTitle("🥗 Menu")
            }.onAppear(perform: {
                viewModel.loadAppetisers()
            }).alert(item: $viewModel.alertItem) { aleartItem in
                Alert(title: aleartItem.title, message: aleartItem.message, dismissButton: aleartItem.dismissbutton)
            }.blur(radius: viewModel.isShowingDetailed ? 10 : 0).disabled(viewModel.isShowingDetailed ? true : false)
            
            if viewModel.isShowingDetailed{
                AppetizerDetailedView(appetizer: viewModel.detailedShowingAppetizer ?? MocData.sampleAppetizer, isShowingView: $viewModel.isShowingDetailed)
            }
            
            if viewModel.isLoading{ ProgressView().tint(Color.orange).scaleEffect(CGSize(width: 2.0, height: 2.0))
            }
            
        }
    }
     
    
}

#Preview {
    AppetizerListView()
} 


