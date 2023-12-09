//
//  HomeNewsSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import SwiftUI
import Extensions

struct NewsSection: View {
    let spNews: [SPNews]
    @State private var selectedSPNewsIndex: Int = 0
    
    var body: some View {
        VStack {
            newsSection
            SPPaginationView(count: spNews.count, selectedIndex: selectedSPNewsIndex)
        }
        .animation(.easeIn, value: selectedSPNewsIndex)
        .frame(height: 208)
    }
    
    var newsSection: some View {
        TabView(selection: $selectedSPNewsIndex) {
            ForEach(spNews.indices, id: \.self) { index in
                let news = spNews[index]
                NewsCell(news: news)
                    .tag(index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

private struct NewsCell: View {
    let news: SPNews
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(news.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text(news.type)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(.ultraThinMaterial)
                
                Text(news.title.uppercased())
                    .font(.h3.weight(.bold))
                
                HStack {
                    Text(news.category.title)
                        .foregroundStyle(.spPink)
                    
                    Text("Wed 12/16")
                    Text("8:30 PM")
                }
            }
            .foregroundStyle(.spBackground)
            .font(.regular)
            .padding(16)
            .padding(.bottom, .containerSpacing)
        }
        .padding(.horizontal, .containerSpacing)
    }
}

#Preview {
    NewsSection(spNews: [])
}
