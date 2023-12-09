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
    
    var body: some View {
        ScrollView {
            VStack {
                searchTextField
                if !categories.isEmpty {
                    CategoriesSection(categories: categories, selectedCategoryId: $viewModel.selectedCategoryId)
                }
                if !news.isEmpty {
                    NewsSection(spNews: news)
                }
                if !matches.isEmpty {
                    FIFASection(matches: matches, title: L10n.Home.Section.Fifa.title, viewAllAction: {})
                }
            }
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
        }
    }
    
    var searchTextField: some View {
        SPTextField(title: L10n.Home.Search.title.capitalized,
                    text: $viewModel.searchQ,
                    icon: Image(systemName: "magnifyingglass"))
        .padding(.horizontal, .containerSpacing)
    }
    
    private func getCategories() async {
        do {
            categories = try await viewModel.getCategories()
            viewModel.selectedCategoryId = categories[safe: 0]?.id ?? UUID()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    private func getNews() async {
        do {
            news = try await viewModel.getNews()
        } catch { }
    }
    
    private func getMatches() async {
        do {
            matches = try await viewModel.getMatches()
        } catch { }
    }
}

#Preview {
    HomeView(router: ModalRouter())
}
