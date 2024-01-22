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
    let dismissbutton: Alert.Button
}

struct AlertContext{
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissbutton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later or contact support."),
                                           dismissbutton: .default(Text("0K")))
    
    static let invalidURL = AlertItem(title: Text("Sever Error"),
                                      message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                      dismissbutton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet."),
                                            dismissbutton: Alert.Button.default(Text("OK")))
    
    static let incompleteFields = AlertItem(title: Text("Incomplete Fields"),
                                            message: Text("Unable to save your details, please make sure that all fields are filled."),
                                            dismissbutton: Alert.Button.default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Unable to save your details, please make sure that your email is correct."),
                                            dismissbutton: Alert.Button.default(Text("OK")))
    static let userSaved = AlertItem(title: Text("Account details updated"),
                                            message: Text("Your account details have been updated successfully."),
                                            dismissbutton: Alert.Button.default(Text("Done")))
    static let userNotSaved = AlertItem(title: Text("Unable to save details"),
                                            message: Text("We faced an error in saving your account details."),
                                            dismissbutton: Alert.Button.default(Text("Ok")))
    static let failToLoadDetails = AlertItem(title: Text("Error loading details"),
                                            message: Text("We faced an error in loadin your account details."),
                                            dismissbutton: Alert.Button.default(Text("Ok")))
    static let orderPlaced = AlertItem(title: Text("Order Placed"),
                                            message: Text("You order has been placed successfuly.\n Your food should reach you in no time!"),
                                            dismissbutton: Alert.Button.default(Text("Yay")))
    
}
