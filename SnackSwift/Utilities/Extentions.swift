//
//  Extentions.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-16.
//

import Foundation

extension Double {
    func toString2(_ numOfDecimal: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = numOfDecimal
        return formatter.string(from: self as NSNumber) ?? ""
    }
}
