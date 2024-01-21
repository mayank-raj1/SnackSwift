//
//  ItemCellView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-21.
//

import SwiftUI

struct ItemCellView: View {
    @ObservedObject var item: Item
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 15){
                Text(item.appetizer.name).font(.title2)
                Text("$\(item.appetizer.price.toString2(2))").tint(.secondary)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 15){
                Stepper("\(item.quantity)", value: $item.quantity, in: 1...15).frame(width: 120).bold()
                
                Text("$\(item.itemTotal.toString2(2))").font(.title3)
            }
        }
    }
}

#Preview {
    ItemCellView(item: MocData.sampleItem)
}
