//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/24/23.
//

import SwiftUI

@main
struct AppetizersApp: App {

    var order = Order()

    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
