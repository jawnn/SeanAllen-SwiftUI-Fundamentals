//
//  AppetizerDetailsView.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/25/23.
//

import SwiftUI

struct AppetizerDetailView: View {

    @EnvironmentObject var order: Order

    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)

            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()

                HStack(spacing: 36) {
                    NutritionView(title: "Calories", value: "\(appetizer.calories)")
                    NutritionView(title: "Carbs", value: "\(appetizer.carbs) g")
                    NutritionView(title: "Protein", value: "\(appetizer.protein) g")
                }
            }

            Spacer()

            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
//                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add To Order")
                Text("$\(appetizer.price, specifier: "%.2f") - Add To Order")
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button(action: {
            isShowingDetail = false
        }, label: {
            XDismissButton()
        }), alignment: .topTrailing)
    }
}

struct AppetizerDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
    }
}

struct NutritionView: View {
    let title: String
    let value: String

    var body: some View {

        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }

    }
}
