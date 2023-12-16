//
//  HomeView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

struct HomeView: View {
    let router: Router
    @StateObject private var viewModel = HomeViewModel()
    
    @State private var categories: [SPCategory] = []
    @State private var news: [SPNews] = []
    @State private var matches: [SPMatch] = []
    @State private var leagues: [SPLeague] = []
    @State private var featuredMatches: [SPFeaturedMatch] = []
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                searchTextField
                if !categories.isEmpty {
                    CategoriesSection(categories: categories, selectedCategory: $viewModel.selectedCategory)
                }
                
                if !news.isEmpty {
                    NewsSection(spNews: news, router: router)
                }
                
                if !matches.isEmpty {
                    FIFASection(matches: matches, title: L10n.Home.Section.Fifa.title, viewAllAction: {})
                }
                
                if !leagues.isEmpty {
                    LeaguesSection(leagues: leagues)
                }
                
                if !featuredMatches.isEmpty {
                    FeaturedMatchesSection(featuredMatches: featuredMatches, title: "Popular Leagues")
                }
            }
            .padding(.bottom, 44)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.spBackgroundSmoke)
        .foregroundStyle(Color.spTextPrimary)
        .toolbar {
            ToolbarItem(placement: .navigation) { SPLogo() }
            ToolbarItem(placement: .topBarTrailing) { NotificationButton(router: router)}
        }
        .task {
            await getCategories()
            await getNews()
            await getMatches()
            await getLeagues()
            await getFeaturedMatches()
        }
    }
    
    var searchTextField: some View {
        SPTextField(title: L10n.Home.Search.title.capitalized,
                    text: $viewModel.searchQ,
                    icon: Image(systemName: "magnifyingglass"))
        .padding(.horizontal, .containerSpacing)
    }
    
    @MainActor private func getCategories() async {
        do {
            categories = try await viewModel.getCategories()
            viewModel.selectedCategory = categories[safe: 0] ?? SPCategory(title: "", image: "")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    @MainActor private func getNews() async {
        do {
            news = try await viewModel.getNews()
        } catch { }
    }
    
    @MainActor private func getMatches() async {
        do {
            matches = try await viewModel.getMatches()
        } catch { }
    }
    
    @MainActor private func getLeagues() async {
        do {
            leagues = try await viewModel.getLeagues()
        } catch { }
    }
    
    @MainActor private func getFeaturedMatches() async {
        do {
            featuredMatches = try await viewModel.getFeaturedMatches()
        } catch { }
    }
}

#Preview {
    HomeView(router: ModalRouter())
}
