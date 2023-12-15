//
//  BasketballTeam.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import Foundation

struct BasketballTeam: Codable, Hashable, Identifiable {
    var id = UUID()
    
    let name: String
    let image: String
    let score: Int
}
