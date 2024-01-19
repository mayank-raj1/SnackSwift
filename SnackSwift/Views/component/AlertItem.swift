//
//  AlertItem.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-15.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dissmissbutton: Alert.Button
}

struct AlertContext{
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dissmissbutton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later or contact support."),
                                           dissmissbutton: .default(Text("0K")))
    
    static let invalidURL = AlertItem(title: Text("Sever Error"),
                                      message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                      dissmissbutton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet."),
                                            dissmissbutton: Alert.Button.default(Text("OK")))
    
    static let incompleteFields = AlertItem(title: Text("Incomplete Fields"),
                                            message: Text("Unable to save your details, please make sure that all fields are filled."),
                                            dissmissbutton: Alert.Button.default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Unable to save your details, please make sure that your email is correct."),
                                            dissmissbutton: Alert.Button.default(Text("OK")))
}
