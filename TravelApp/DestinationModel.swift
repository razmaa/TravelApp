//
//  DestinationModel.swift
//  TravelApp
//
//  Created by nika razmadze on 14.12.23.
//

import Foundation
import SwiftUI

struct Destination: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
    var transport: [String]
    var mustSee: [String]
    var hotels: [String]
}
