//
//  OrderEmptyState.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/26/23.
//

import SwiftUI

struct OrderEmptyState: View {
    let imageName: String
    let message: String

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(Color.brandPrimary, .gray)
                    .frame(height: 150)

                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct OrderEmptyState_Previews: PreviewProvider {
    static var previews: some View {
        OrderEmptyState(imageName: "list.bullet.clipboard", message: "default message.\n Making this a multiline message for testing purposes.")
    }
}
