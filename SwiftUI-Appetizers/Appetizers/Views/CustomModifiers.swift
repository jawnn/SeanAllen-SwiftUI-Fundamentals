//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/26/23.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }

}

struct ListCellImageStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }

}
