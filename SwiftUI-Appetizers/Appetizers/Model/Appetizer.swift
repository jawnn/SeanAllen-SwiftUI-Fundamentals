//
//  Appetizer.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/24/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int

    let name: String
    let price: Float
    let description: String
    let imageURL: String

    let carbs: Int
    let calories: Int
    let protein: Int


}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Test Appetizer",
                                           price: 9.99,
                                           description: "This is the description for my appetizer. It's yummy.",
                                           imageURL: "",
                                           carbs: 25,
                                           calories: 50,
                                           protein: 75)

    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]

    static let orderItemOne = Appetizer(id: 1,
                                           name: "Test Appetizer 1",
                                           price: 9.99,
                                           description: "This is the description for my appetizer. It's yummy.",
                                           imageURL: "",
                                           carbs: 25,
                                           calories: 50,
                                           protein: 75)

    static let orderItemTwo = Appetizer(id: 2,
                                           name: "Test Appetizer 2",
                                           price: 19.99,
                                           description: "This is the description for my appetizer. It's yummy.",
                                           imageURL: "",
                                           carbs: 25,
                                           calories: 50,
                                           protein: 75)

    static let orderItemThree = Appetizer(id: 3,
                                           name: "Test Appetizer 3",
                                           price: 29.99,
                                           description: "This is the description for my appetizer. It's yummy.",
                                           imageURL: "",
                                           carbs: 25,
                                           calories: 50,
                                           protein: 75)

    static let sampleOrder: [Appetizer] = [orderItemOne, orderItemTwo, orderItemThree]
}
