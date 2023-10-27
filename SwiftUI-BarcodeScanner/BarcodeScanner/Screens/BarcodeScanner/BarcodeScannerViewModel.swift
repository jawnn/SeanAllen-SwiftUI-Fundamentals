//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Roberto Manese III on 10/13/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {

    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?

    var statusText: String {
        return scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }

    var statusTextColor: Color {
        return scannedCode.isEmpty ? Color.red : Color.green
    }

}
