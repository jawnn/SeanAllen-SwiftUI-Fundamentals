//
//  OrderView.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/24/23.
//

import SwiftUI

struct OrderView: View {

    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)

                    Button {
                        print("order button")
                    } label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }

                if order.items.isEmpty {
                    OrderEmptyState(imageName: "list.bullet.clipboard", message: "Default message.\n Making this a multiline message for testing purposes.")
                }

            }
            .navigationTitle("🧾 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
