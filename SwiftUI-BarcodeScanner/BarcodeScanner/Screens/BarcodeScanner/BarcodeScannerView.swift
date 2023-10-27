//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Roberto Manese III on 10/13/23.
//

import SwiftUI

struct BarcodeScannerView: View {

    @StateObject var viewModel = BarcodeScannerViewModel()

    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)

                Spacer().frame(height: 60)

                Label {
                    Text("Scanned Barcode:")
                } icon: {
                    Image(systemName: "barcode.viewfinder")
                }
                .font(.title)

                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()


            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
