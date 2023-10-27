//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/25/23.
//

import SwiftUI

class AccountViewModel: ObservableObject {

    @AppStorage("user") private var userData: Data?

    @Published var user = User()
    @Published var alertItem: AlertItem?

    var isValidForm: Bool {

        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            self.alertItem = AlertContext.emptyFields
            return false
        }

        guard user.email.isValidEmail else {
            self.alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }

    func saveChanges() {
        guard isValidForm else { return }

        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSavedSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }

    func retrieveUser() {
        guard let userData else { return }

        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}
