//
//  MainScreenViewModel.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import Foundation
import SwiftUI

class MainScreenViewModel: ObservableObject {
    @Published var destinations: [Destination] = [
    Destination(name: "Tbilisi", image: Image("tbilisi"), transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"]),
    Destination(name: "Kutaisi", image: Image("kutaisi"), transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"]),
    Destination(name: "Bali", image: Image("bali"), transport: ["car", "bus", "Metro"], mustSee: ["Old Tbilisi", "Sameba"], hotels: ["hotel1", "hotel2"]),

    ]
    
    @Published var randomTips: [String] = [
    "Dont forget ur water",
    "Always put wallet in safe place",
    "use native map"
    ]

    func getRandomTip() -> String {
        let index = Int.random(in: 0..<randomTips.count)
        
        return randomTips[index]
    }
}
