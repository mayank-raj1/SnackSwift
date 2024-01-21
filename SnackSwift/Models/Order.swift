//
//  Order.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-20.
//

import Foundation
import SwiftUI

final class Order: ObservableObject{
    @Published var items: [Item] = []
    
    func add(_ item: Item) {
        print("NJ2")
        if (!items.contains(where: { appetizer in
            return appetizer.id == item.id
        })){
            print("NJ")
            items.append(item)
        }
    }
    
    var total: Double {
        items.reduce(0) {$0 + $1.appetizer.price}
    }
    
    func getItem(for appetizer: Appetizer) -> Item{
        var item: Item
        item = items.first(where: { orderItem in
            return orderItem.appetizer.id == appetizer.id
        }) 
        ?? Item(appetizer: appetizer, quantity: 0)
        return item
    }
    
}
 
