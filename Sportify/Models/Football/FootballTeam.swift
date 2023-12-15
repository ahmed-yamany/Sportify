//
//  FootballTeam.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import Foundation

struct FootballTeam: Codable, Hashable, Identifiable {
    var id = UUID()
    
    let name: String
    let image: String
    let score: Int
}
