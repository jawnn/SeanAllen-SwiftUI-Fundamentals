//
//  Alert.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/25/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("OK")))

    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please try again later or contact support."),
                                            dismissButton: .default(Text("OK")))

    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server. If this persist, please contact support."),
                                            dismissButton: .default(Text("OK")))

    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("OK")))

    static let emptyFields      = AlertItem(title: Text("Required Field Blank"), message: Text("Please fill in all required info."), dismissButton: .default(Text("OK")))

    static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please double check that you have inputted a valid email."),
                                            dismissButton: .default(Text("OK")))

    static let userSavedSuccess = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Your profile information has been successfully saved."),
                                            dismissButton: .default(Text("OK")))

    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error saving or retrieving your profile."),
                                            dismissButton: .default(Text("OK")))
}
