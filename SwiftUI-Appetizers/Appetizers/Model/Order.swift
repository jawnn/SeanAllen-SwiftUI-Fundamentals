//
//  Order.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/26/23.
//

import SwiftUI

final class Order: ObservableObject {

    @Published var items: [Appetizer] = []

    var totalPrice: Float {
        items.reduce(0) { $0 + $1.price }
    }

    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }

    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
