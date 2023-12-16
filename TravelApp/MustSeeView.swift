//
//  MustSeeView.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import SwiftUI

struct MustSeeView: View {
    
    @Binding var navigationPath: NavigationPath
    let destination: Destination

    var body: some View {
        NavigationStack(path: $navigationPath){
            List(destination.mustSee, id: \.self) { mustSee in
                Text(mustSee)
            }
            .navigationBarTitle("Must See")
            .navigationBarItems(trailing: Button("Go to main screen") {
                navigationPath = NavigationPath()
            })
        }
    }
}

#Preview {
    MustSeeView(navigationPath: .constant(NavigationPath()), destination:     Destination(name: "Tbilisi", image: "tbilisi", transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"])
)
}
