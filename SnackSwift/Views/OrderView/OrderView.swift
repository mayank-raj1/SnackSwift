//
//  OrderView.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-13.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    @State var alertItem: AlertItem?
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
                    Button("$\(order.total.toString2(2)) - Place Order") {
                        order.items = []
                        alertItem = AlertContext.orderPlaced
                    }.buttonStyle(.borderedProminent).tint(.orange).controlSize(.large)
                }.navigationTitle("🛎️ Order")
                if order.items.isEmpty{
                    EmptyState(message: "You have no appetizers in your cart.\n Please add an appetizer!")
                }
            }
        }.alert(item: $alertItem) { aleartItem in
            Alert(title: aleartItem.title, message: aleartItem.message, dismissButton: aleartItem.dismissbutton)
        }
    }
}

var order1 = Order()

#Preview {
    OrderView().environmentObject(order1)
}
