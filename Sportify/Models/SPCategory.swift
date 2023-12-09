//
//  SPCategory.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import Foundation

struct SPCategory: Codable, Identifiable, Hashable {
    var id = UUID()
    let title: String
    let image: String
}
