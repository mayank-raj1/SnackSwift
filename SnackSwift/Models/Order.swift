//
//  Order.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-20.
//

import Foundation
import SwiftUI

final class Order: ObservableObject{
    @Published var items: [Appetizer] = MocData.sampleAppetizers
    
    func add(_ item: Appetizer) {
        if (!items.contains(where: { appetizer in
            return appetizer == item
        })){
            items.append(item)
        }
    }
    
    var total: Double {
        items.reduce(0) {$0 + $1.price}
    }
    
}
