//
//  SPTeam.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import Foundation

struct SPTeam: Codable, Hashable, Identifiable {
    var id = UUID()
    
    let name: String
}
