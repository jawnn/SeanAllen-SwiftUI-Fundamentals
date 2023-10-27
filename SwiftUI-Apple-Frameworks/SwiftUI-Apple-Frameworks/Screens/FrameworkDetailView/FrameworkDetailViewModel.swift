//
//  FrameworkDetailViewModel.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Roberto Manese III on 10/27/23.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {

    let framework: Framework
    var isShowDetailView: Binding<Bool>
    @Published var isShowingSafariView = false

    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowDetailView = isShowingDetailView
    }
}
