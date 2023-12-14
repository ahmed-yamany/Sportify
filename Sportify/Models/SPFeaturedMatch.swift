//
//  SPFeaturedMatch.swift
//  Sportify
//
//  Created by Ahmed Yamany on 13/12/2023.
//

import Foundation

struct SPFeaturedMatch: Hashable, Codable, Identifiable {
    var id = UUID()
    
    let image: String
    let title: String
    let subtitle: String
    let time: String
}
