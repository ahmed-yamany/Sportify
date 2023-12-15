//
//  NewsView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI
import Extensions

struct NewsView: View {
    let router: Router
    @StateObject private var viewModel = NewsViewModel()
    @State private var visibleLeagues: [SPLeague] = []
    
    var body: some View {
        VStack {
            LeaguesSection(leagues: visibleLeagues, title: false)
            
            MatchTypePicker(selectedMatchType: $viewModel.matchType)
                .padding(.horizontal, .containerSpacing)
            
            matchesView
        }
        .padding(.top, .containerSpacing)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.spBackgroundSmoke)
        .animation(.interpolatingSpring, value: viewModel.selectedCategory)
        .animation(.interpolatingSpring, value: viewModel.matchType)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("Matches").font(.h2.bold())
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                CategoryPicker(selectedCategory: $viewModel.selectedCategory)
            }
        }
        .onReceive(viewModel.$selectedCategory) { selectedCategory in
            Task {
                visibleLeagues = try await viewModel.getLeagues(for: selectedCategory)
            }
        }
    }
    
    var matchesView: some View {
        TabView(selection: $viewModel.matchType) {
            upcomingMatchesView
                .tag(SPMatchType.upcoming)
                .padding(.horizontal, .containerSpacing)
            
            pastMatchesView
                .tag(SPMatchType.past)
                .padding(.horizontal, .containerSpacing)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .ignoresSafeArea()
    }
    
    @ViewBuilder
    var upcomingMatchesView: some View {
        switch viewModel.selectedCategory {
            case .football:
                UpcomingFootballMatchesSection(viewModel: viewModel)
            case .basketball:
                UpcomingBasketballMatchesSection(viewModel: viewModel)
            case .cricket:
                UpcomingCricketMatchesSection()
        }
    }
   @ViewBuilder
    var pastMatchesView: some View {
        switch viewModel.selectedCategory {
            case .football:
                PastFootballMatchesSection(viewModel: viewModel)
            case .basketball:
                UpcomingBasketballMatchesSection(viewModel: viewModel)
            case .cricket:
                UpcomingCricketMatchesSection()
        }
    }
}

#Preview {
    NewsView(router: ModalRouter())
}
