//
//  BasketballMatch.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import Foundation

struct BasketballMatch: Hashable, Identifiable, Codable {
    var id = UUID()
    
    let team1: BasketballTeam
    let team2: BasketballTeam    
}
