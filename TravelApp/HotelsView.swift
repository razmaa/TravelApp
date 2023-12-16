//
//  HotelsView.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import SwiftUI

struct HotelsView: View {
    
    @Binding var navigationPath: NavigationPath
    let destination: Destination
    
    var body: some View {
        NavigationStack(path: $navigationPath){
            List(destination.hotels, id: \.self) { hotel in
                Text(hotel)
            }
            .navigationBarTitle("Hotels")
            .navigationBarItems(trailing: Button("Go to main screen") {
                navigationPath = NavigationPath()
            })
        }
    }
}

#Preview {
    HotelsView(navigationPath: .constant(NavigationPath()), destination:     Destination(name: "Tbilisi", image: "tbilisi", transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"])
)
}
