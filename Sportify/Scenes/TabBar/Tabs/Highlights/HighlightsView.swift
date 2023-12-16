//
//  HighlightsView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

struct HighlightsView: View {
    let router: Router
    @StateObject private var viewModel = HighlightsViewModel()
    @State private var visibleLeagues: [SPLeague] = []
    @State private var featuredMatches: [SPFeaturedMatch] = []

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                LeaguesSection(leagues: visibleLeagues, title: false)
                
                LiveSection(router: router)
                
                MatchHiglightsSection(router: router)
                
                FeaturedMatchesSection(featuredMatches: featuredMatches, title: "Popular Match")
            }
            .padding(.top, .containerSpacing)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.spBackgroundSmoke)
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Text("Highlights").font(.h2.bold())
            }
        }
        .task {
            do {
                visibleLeagues = try await viewModel.getLeagues()
            } catch { }
            
            do {
                featuredMatches = try await viewModel.getFeaturedMatches()
            } catch { }
        }
    }
}

#Preview {
    HighlightsView(router: ModalRouter())
}
