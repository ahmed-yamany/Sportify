//
//  FootballMatch.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import Foundation

struct FootballMatch: Hashable, Identifiable, Codable {
    var id = UUID()
    
    let team1: FootballTeam
    let team2: FootballTeam
    
    let league: FootballLeague
    
    let time: String
}
