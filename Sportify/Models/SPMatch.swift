//
//  SPMatch.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import Foundation

struct SPMatch: Codable, Hashable, Identifiable {
    var id = UUID()
    
    let firstTeam: SPTeam
    let secondTeam: SPTeam
    let description: String
    let image: String
}

enum SPMatchType: String, CaseIterable, Hashable {
    case upcoming = "Upcoming"
    case past = "Past Matches"
}
