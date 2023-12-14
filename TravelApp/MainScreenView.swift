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
    
    var body: some View {
        NavigationView {
            List(viewModel.destinations) { destination in
                NavigationLink(destination: DestinationDetailScreenView(destination: destination)) {
                    Text(destination.name)
                }
            }
            .navigationBarTitle("Travel Destinations")
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



