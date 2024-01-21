//
//  Item.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-21.
//

import Foundation
import SwiftUI

class Item: Identifiable, ObservableObject{
    var id: UUID = UUID()
    var appetizer: Appetizer
    @Published var quantity: Int
    
    init(appetizer: Appetizer, quantity: Int) {
        self.appetizer = appetizer
        self.quantity = quantity
    }
    
    var itemTotal: Double{
        return appetizer.price * Double(quantity)
    }
}
