//
//  OrderView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-13.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items) { item in
                            ItemCellView(item: item)
                        }.onDelete(perform: { indexSet in
                            order.items.remove(atOffsets: indexSet)
                        })
                    }.listStyle(.plain)
                    Button(action: {
                        
                    }, label: {
                        AFButton(text: "Place order").padding(.bottom)
                    })
                }.navigationTitle("🛎️ Order")
                if order.items.isEmpty{
                    EmptyState(message: "You have no appetizers in your cart.\n Please add an appetizer!")
                }
            }
        }
    }
}

#Preview {
    OrderView()
}
