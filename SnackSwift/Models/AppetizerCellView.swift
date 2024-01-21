//
//  AppetizerCellView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-14.
//

import SwiftUI

struct AppetizerCellView: View {
    var appetizer: Appetizer
    var body: some View {
        HStack{
            AppetizerRemoteImage(imageURL: appetizer.imageURL).frame(width: 120, height: 90).cornerRadius(9)
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name).font(.title2)
                Text("$\(appetizer.price.toString2(2))").font(.title3).foregroundStyle(.secondary)
            }.padding(.leading)
        }
    }
}


#Preview {
    AppetizerCellView(appetizer: MocData.sampleAppetizer)
}
