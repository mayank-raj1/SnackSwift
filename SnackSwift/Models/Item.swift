//
//  Item.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-21.
//

import Foundation

struct Item: Identifiable{
    let id: Int
    let appetizer: Appetizer
    var quantity: Int
    
    var itemTotal: Double{
        return appetizer.price * Double(quantity)
    }
}
