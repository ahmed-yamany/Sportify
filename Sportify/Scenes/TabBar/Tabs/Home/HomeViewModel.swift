//
//  HomeViewModel.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var searchQ: String = ""
    @Published var selectedCategory: SPCategory = SPCategory(title: "", image: "")
    
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
                  category: .init(title: "Basketball", image: "🏀"),
                  type: "🔥 Top news",
                  desctiption: "We explored the tough decisions regarding the selection of Western Conference backcourt players looming later this month once the league officially opens voting for the 2023 NBA All-Star Game. So, naturally, it’s time to turn attention to the Eastern Conference, which added a couple of 2022 All-Star guards from the West in Donovan Mitchell and Dejounte Murray to an already deep pool that features a total of 17 All-Star nods between two players — James Harden and Kyrie Irving — that aren’t even locks to make this year’s squad."),
            
            .init(title: "Phoenix Suns vs Boston Celtics", image: "news-1",
                  category: .init(title: "Trending", image: "🔥"),
                  type: "🔥 Top news",
                  desctiption: "We explored the tough decisions regarding the selection of Western Conference backcourt players looming later this month once the league officially opens voting for the 2023 NBA All-Star Game. So, naturally, it’s time to turn attention to the Eastern Conference, which added a couple of 2022 All-Star guards from the West in Donovan Mitchell and Dejounte Murray to an already deep pool that features a total of 17 All-Star nods between two players — James Harden and Kyrie Irving — that aren’t even locks to make this year’s squad."),
            
            .init(title: "Phoenix Suns vs Boston Celtics", image: "news-1",
                  category: .init(title: "Trending", image: "🔥"),
                  type: "🔥 Top news",
                  desctiption: "We explored the tough decisions regarding the selection of Western Conference backcourt players looming later this month once the league officially opens voting for the 2023 NBA All-Star Game. So, naturally, it’s time to turn attention to the Eastern Conference, which added a couple of 2022 All-Star guards from the West in Donovan Mitchell and Dejounte Murray to an already deep pool that features a total of 17 All-Star nods between two players — James Harden and Kyrie Irving — that aren’t even locks to make this year’s squad.")
        ]
        // swiftlint: disable all
    }
    
    func getMatches() async throws -> [SPMatch] {
        [.init(firstTeam: .init(name: "Portucal"),
                  secondTeam: .init(name: "Switzerland"),
                  description: "Watch the highlights from the match between...",
                  image: "fifa-1"),
            
            .init(firstTeam: .init(name: "England"),
                  secondTeam: .init(name: "USA"),
                  description: "Watch the highlights from the match between...",
                  image: "fifa-2")
        ]
    }
    
    func getLeagues() async throws -> [SPLeague] {
        [.init(name: "Premier League", image: "l-1"),
            .init(name: "CBF League", image: "l-2"),
            .init(name: "LIGUE 1 League", image: "l-3"),
            .init(name: "Korean League", image: "l-4")]
    }
    
    func getFeaturedMatches() async throws -> [SPFeaturedMatch] {
        [.init(image: "fifa-2",
               title: "Qatar World Cup 2022",
               subtitle: "Best of Portugal goals against Switzerland",
               time: "04:22"),
         .init(image: "fifa-3",
               title: "Qatar World Cup 2022",
               subtitle: "Messi goals against Switzerland",
               time: "04:22"),
         .init(image: "fifa-4",
               title: "Qatar World Cup 2022",
               subtitle: "Best of Portugal goals against Switzerland",
               time: "04:22"),
         .init(image: "fifa-5",
               title: "Qatar World Cup 2022",
               subtitle: "Messi goals against Switzerland",
               time: "04:22")
        ]
    }
}

struct Mmm: Identifiable {
    var id = UUID()
}
