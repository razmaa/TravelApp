//
//  DestinationDetailScreenView.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import SwiftUI

struct DestinationDetailScreenView: View {
    
    let destination: Destination
    @Binding var navigationPath: NavigationPath
    
    var body: some View {
        NavigationStack(path: $navigationPath){
            VStack {
                Text("General information about \(destination.name)")
                    .bold()
                    .padding()
                
                destination.image
                    .resizable()
                    .frame(width: 350, height: 250)
                    .aspectRatio(contentMode: .fit)
                
                NavigationLink("Transport") {
                    TransportView(navigationPath: $navigationPath, destination: destination)
                }
                
                NavigationLink("Must see") {
                    MustSeeView(navigationPath: $navigationPath, destination: destination)
                }
                
                NavigationLink("Hotels") {
                    HotelsView(navigationPath: $navigationPath, destination: destination)
                }
                
            }
            .navigationTitle(destination.name)
        }
        .padding()
    }
}

#Preview {
    DestinationDetailScreenView(destination:     Destination(name: "Tbilisi", image: Image("tbilisi"), transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"]), navigationPath: .constant(NavigationPath())
    )
}


