//
//  HomeViewModel.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var searchQ: String = ""
    @Published var selectedCategoryId: UUID = UUID()
    
    func getCategories() async throws -> [SPCategory] {
        return [
            .init(title: "Trending", image: "🔥"),
            .init(title: "Football", image: "⚽"),
            .init(title: "Basketball", image: "🏀"),
            .init(title: "Cricket", image: "🏏")
        ]
    }
    
    func getNews() async throws -> [SPNews] {
        // swiftlint: disable all
        return [
            .init(title: "Phoenix Suns vs Boston Celtics", image: "news-1",
                  category: .init(title: "Trending", image: "🔥"), type: "🔥 Top news"),
            .init(title: "Phoenix Suns vs Boston Celtics", image: "news-1",
                  category: .init(title: "Trending", image: "🔥"), type: "🔥 Top news"),
            .init(title: "Phoenix Suns vs Boston Celtics", image: "news-1",
                  category: .init(title: "Trending", image: "🔥"), type: "🔥 Top news")
        ]
        // swiftlint: disable all
    }
    
    func getMatches() async throws -> [SPMatch] {
        [
            .init(firstTeam: .init(name: "Portucal"),
                  secondTeam: .init(name: "Switzerland"),
                  description: "Watch the highlights from the match between...",
                  image: "fifa-1"),
            
            .init(firstTeam: .init(name: "England"),
                  secondTeam: .init(name: "USA"),
                  description: "Watch the highlights from the match between...",
                  image: "fifa-2")
        ]
    }
}

struct Mmm: Identifiable {
    var id = UUID()
}
