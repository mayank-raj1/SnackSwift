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

extension String{
    var isValidEmail: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
