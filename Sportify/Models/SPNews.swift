//
//  SPNews.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import Foundation

struct SPNews: Codable, Hashable, Identifiable {
    var id = UUID()
    let title: String
    let image: String
    let category: SPCategory
    let type: String
    let desctiption: String
    var images: [String] = ["fifa-6", "fifa-7"]
}
