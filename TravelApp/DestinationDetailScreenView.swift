//
//  DestinationDetailScreenView.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import SwiftUI

struct DestinationDetailScreenView: View {
    
    var destination: Destination
    @Binding var navigationPath: NavigationPath
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack {
                
                Image("\(destination.image)")
                    .resizable()
                    .frame(width: 350, height: 250)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text("General information about \(destination.name)")
                    .bold()
                    .padding()
                
                HStack {
                    NavigationLink(value: 1){
                        Text("Hotels")
                            .bold()
                    }
                    .buttonStyle(BorderedButtonStyle())
                    
                    NavigationLink(value: 2){
                        Text("Must See")
                            .bold()
                    }
                    .buttonStyle(BorderedButtonStyle())
                    
                    NavigationLink(value: 3){
                        Text("Transport")
                            .bold()
                    }
                    .buttonStyle(BorderedButtonStyle())
                }
            }
            .navigationDestination(for: Int.self) { viewName in
                switch viewName {
                case 1:
                    HotelsView(navigationPath: $navigationPath, destination: destination)
                case 2:
                    MustSeeView(navigationPath: $navigationPath, destination: destination)
                case 3:
                    TransportView(navigationPath: $navigationPath, destination: destination)
                default:
                    EmptyView()
                }
            }
            .navigationTitle(destination.name)
            
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DestinationDetailScreenView(destination:     Destination(name: "Tbilisi", image: "tbilisi", transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"]), navigationPath: .constant(NavigationPath())
    )
}


