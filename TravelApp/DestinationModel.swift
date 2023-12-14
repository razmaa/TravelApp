//
//  DestinationModel.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import Foundation
import SwiftUI

struct Destination: Identifiable {
    var id = UUID()
    var name: String
    var image: Image
    var transport: [String]
    var mustSee: [String]
    var hotels: [String]
}
