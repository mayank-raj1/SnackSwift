//
//  Appetizer.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-13.
//

import Foundation

struct Appetizer: Decodable, Identifiable, Equatable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}

struct MocData{
    static let sampleAppetizer = Appetizer(id: 0001,
                                               name: "Test Appetizer",
                                               description: "This is the description for my appetizer. It's yummy.",
                                               price: 9.99,
                                               imageURL: "",
                                               calories: 99,
                                               protein: 99,
                                               carbs: 99)
    static let sampleAppetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let sampleItem = Item(appetizer: sampleAppetizer, quantity: 2)
    static let sample = Item(appetizer: sampleAppetizer, quantity: 2)
    
    static let sampleItems = [sample, sample]
}
