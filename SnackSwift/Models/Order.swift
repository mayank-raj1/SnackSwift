//
//  Order.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-20.
//

import Foundation
import SwiftUI

final class Order: ObservableObject{
    @Published var items: [Item] = MocData.sampleItems
    
    func add(_ item: Item) {
        if (!items.contains(where: { appetizer in
            return appetizer.appetizer == item.appetizer
        })){
            items.append(item)
        }
    }
    
    var total: Double {
        items.reduce(0) {$0 + $1.appetizer.price}
    }
    
}
 
