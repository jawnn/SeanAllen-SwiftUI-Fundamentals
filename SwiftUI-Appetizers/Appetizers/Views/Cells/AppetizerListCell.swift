//
//  AppetizerCellView.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/24/23.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer

    var body: some View {
        HStack() {
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)

            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .modifier(ListCellImageStyle())
            } placeholder: {
                Image(systemName: "fork.knife")
                    .resizable()
                    .modifier(ListCellImageStyle())
            }


            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)

            Spacer()
        }
    }
}

struct AppetizerCellView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}
