//
//  Item.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-21.
//

import Foundation
import SwiftUI

class Item: Identifiable, ObservableObject{
    var id: Int?
    var appetizer: Appetizer?
    @Published var quantity: Int
    
    init(id: Int? = 2421, appetizer: Appetizer? = nil, quantity: Int) {
        self.id = id
        self.appetizer = appetizer
        self.quantity = quantity
    }
    
    var itemTotal: Double{
        guard let appetizer else{
            return 0
        }
        return appetizer.price * Double(quantity)
    }
}
