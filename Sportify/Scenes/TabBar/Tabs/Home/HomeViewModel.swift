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
    // swiftlint: disable all
    func getCategories() async throws -> [SPCategory] {
        return [
            .init(title: "Trending", image: "🔥"),
            .init(title: "Football", image: "⚽"),
            .init(title: "Basketball", image: "🏀"),
            .init(title: "Cricket", image: "🏏")
        ]
    }
    
    func getNews() async throws -> [SPNews] {
        
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
        [
            .init(name: "Premier League",
                  image: "https://s3-alpha-sig.figma.com/img/f56e/23e5/2b5857aae2a5cf8e81fe395f99643840?Expires=1703462400&Signature=ibuh79FDqLzTYg7w-7Tc8~6bdDnyyWGh6UFHKzpTmMeHbaRmxHEweCQe8NaUSlXYPkAGUQHY3Cb-OQjk5SxHd9N4Kn~eJoyAjF5ERxnXlZlyqsDY~CxE0lFOWiWbVa~IOf~zcJf~6lzVrbFNyq~6gjG6rUJkkVR22HU87dqu0Pq9t9lhoj8RDJHvCW-fr9vDKxv~XwTdHI6-EP6UrgEqRqyu3bupOOqYdVnpDgwI1w6GfXhKMp3zXPBSgu0u4kdsVva0SNGOf0JWcsP4FtuCOYeP7E2o8BentGob0kWANkzG6bnOTU2eZJEcC09cgvl-cqywd1CKFTYpSWsKR4ujtQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Football", image: "⚽")),
            .init(name: "CBF League",
                  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Brazilian_Football_Confederation_logo.svg/1200px-Brazilian_Football_Confederation_logo.svg.png",
                  category: .init(title: "Football", image: "⚽")),
            .init(name: "LIGUE 1 League", image: "https://a2.espncdn.com/combiner/i?img=%2Fi%2Fleaguelogos%2Fsoccer%2F500%2F9.png", category: .init(title: "Football", image: "⚽")),
            .init(name: "Korean League",
                  image: "https://i.bleacherreport.net/images/team_logos/328x328/south_korea_national_football.png?canvas=492,328",
                  category: .init(title: "Football", image: "⚽")),
        ]
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
    // swiftlint: disable all
}

struct Mmm: Identifiable {
    var id = UUID()
}
