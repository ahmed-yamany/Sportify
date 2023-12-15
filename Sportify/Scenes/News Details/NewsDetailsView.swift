//
//  NewsDetailsView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 13/12/2023.
//

import SwiftUI

struct NewsDetailsView: View {
    @ObservedObject var viewModel: NewsDetailsViewModel
    private let columns: [GridItem] = [GridItem(.adaptive(minimum: .matchCellWidth, maximum: .matchCellWidth  + 16))]
    var body: some View {
        ScrollView {
            VStack {
                image
                content
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .ignoresSafeArea()
        .onAppear {
            TabBarViewModel.shared.isHidden = true
        }
        .onDisappear {
            TabBarViewModel.shared.isHidden = false
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Menu {
                    Text("h1")
                } label: {
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(90))
                }
            }
        }
    }
    
    private var image: some View {
        ZStack(alignment: .bottomLeading) {
            Image(viewModel.news.image)
                .resizable()
                .frame(height: 360)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(viewModel.news.type)
                    .font(.small)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(.ultraThinMaterial)
                
                Text(viewModel.news.title.uppercased())
                    .font(.h3.weight(.bold))
            }
            .foregroundStyle(.spBackground)
            .padding(16)
            .padding(.bottom, .containerSpacing)
        }
        
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 16) {
            category
            description
            
            LazyVGrid(columns: columns) {
                ForEach(viewModel.news.images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .frame(width: .matchCellWidth, height: 256)
                        .foregroundStyle(.green)
                }
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, .containerSpacing)
    }
    
    private var category: some View {
        HStack {
            Text(viewModel.news.category.title)
                .foregroundStyle(.spPink)
            
            Text("Wed 12/16")
            Text("8:30 PM")
        }
        .font(.regular)
    }
    
    private var description: some View {
        Text(viewModel.news.desctiption.replacingOccurrences(of: ".", with: "\n\n"))
            .font(.regular)
            .foregroundStyle(Color.spTextSecondary)
    }

}

#Preview {
    NewsDetailsView(viewModel: .init(news: .init(title: "Phoenix Suns vs Boston Celtics",
                                                 image: "news-1",
                                                 category: .init(title: "Trending", image: "🔥"),
                                                 type: "🔥 Top news",
                                                 desctiption: "We explored the")))
}
