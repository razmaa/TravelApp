//
//  DestinationDetailScreenView.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import SwiftUI

struct DestinationDetailScreenView: View {
    
    let destination: Destination
    @State var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath){
            VStack {
                Text("General information about \(destination.name)")
                
                destination.image
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                
                Button("Transport") {
                    navigationPath.append("Transport")
                }
                
                Button("Must See") {
                    navigationPath.append("Must see")
                }
                
                Button("Hotels"){
                    navigationPath.append("Hotels")
                }
                
            }
        }
        .navigationBarTitle(destination.name)
        //TODO: აქ რაღაცას ვერ ვაკეთებ სწორად
        .navigationDestination(for: String.self) { viewName in
            switch viewName {
            case "Transport":
                TransportView(navigationPath: $navigationPath, destination: destination)
            case "Must see":
                MustSeeView(navigationPath: $navigationPath, destination: destination)
            case "Hotels":
                HotelsView(navigationPath: $navigationPath, destination: destination)
            default:
                EmptyView()
            }
        }
    }
}

#Preview {
    DestinationDetailScreenView(destination:     Destination(name: "Tbilisi", image: Image(systemName: "apple.logo"), transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"])
    )
}


