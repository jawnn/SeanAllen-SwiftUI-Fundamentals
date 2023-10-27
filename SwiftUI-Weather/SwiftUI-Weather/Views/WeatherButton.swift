//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Roberto Manese III on 9/22/23.
//

import SwiftUI

struct WeatherButton: View {

    var buttonTitle: String
    var textColor: Color
    var backgroundColor: Color

    var body: some View {
        Text(buttonTitle)
            .frame(width: 280, height: 50, alignment: .center)
            .foregroundColor(textColor)
            .background(backgroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)

    }

}

