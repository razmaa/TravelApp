//
//  MainScreenView.swift
//  TravelApp
//
//  Created by nika razmadze on 13.12.23.
//

import SwiftUI

struct MainScreenView: View {
    @ObservedObject var viewModel = MainScreenViewModel()
    @State private var showingAlert = false
    @State var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath ) {
            List(viewModel.destinations) { destination in
                NavigationLink(destination: DestinationDetailScreenView(destination: destination, navigationPath: $navigationPath)) {
                    Text(destination.name)
                }
                .padding()
            }
            .navigationBarTitle("Travel Destinations", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                showingAlert = true
            }) {
                Text("Travel Tips")
            }).alert(viewModel.getRandomTip(), isPresented: $showingAlert) {
                
            }
        }
    }
}

#Preview {
    MainScreenView()
}



