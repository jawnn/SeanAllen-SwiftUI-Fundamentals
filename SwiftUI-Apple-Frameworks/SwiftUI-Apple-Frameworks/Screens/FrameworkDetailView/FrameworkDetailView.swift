//
//  FrameworkDetailView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Roberto Manese III on 9/28/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel

    var body: some View {
        VStack {
            HStack {

                Spacer()

                Button {
                    viewModel.isShowDetailView.wrappedValue = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
                
            }
            .padding()


            Spacer()

            FrameworkTitleView(framework: viewModel.framework)

            Text(viewModel.framework.description)
                .font(.body)
                .padding()

            Spacer()

            // Updated button to use Link. Pops user out of app.
            Link(destination: URL(string: viewModel.framework.urlString)!) {
                Text("Learn More")
                    .fontWeight(.semibold)
                    .frame(width: 250, height: 44)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }

//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                Text("Learn More")
//                    .fontWeight(.semibold)
//                    .frame(width: 250, height: 44)
//                    .foregroundColor(.white)
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            }
        }
        .sheet(isPresented: $viewModel.isShowingSafariView) {
            SafariView(url: URL(string: viewModel.framework.urlString)!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(true)))
            .preferredColorScheme(.dark)
    }
}
