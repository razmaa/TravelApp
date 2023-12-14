//
//  TransportView.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import SwiftUI

struct TransportView: View {
    
    @Binding var navigationPath: NavigationPath
    let destination: Destination

    var body: some View {
        NavigationStack(path: $navigationPath){
            List(destination.transport, id: \.self) { transport in
                Text(transport)
            }
            .navigationBarTitle("Transport")
            .navigationBarItems(trailing: Button("Go to main screen") {
                navigationPath = NavigationPath()
            })
        }
    }
}

#Preview {
    TransportView(navigationPath: .constant(NavigationPath()), destination:     Destination(name: "Tbilisi", image: Image(systemName: "apple.logo"), transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"])
)
}
