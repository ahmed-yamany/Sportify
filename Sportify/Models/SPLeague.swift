//
//  SPLeague.swift
//  Sportify
//
//  Created by Ahmed Yamany on 13/12/2023.
//

import Foundation

struct SPLeague: Hashable, Codable, Identifiable {
    var id = UUID()
    
    let name: String
    let image: String
}
