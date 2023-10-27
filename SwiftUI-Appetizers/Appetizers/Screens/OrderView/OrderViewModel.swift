//
//  OrderViewModel.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/26/23.
//

import SwiftUI

class OrderViewModel: ObservableObject {

    @AppStorage("order") private var orderData: Data?

    @EnvironmentObject var order: Order
}
