//
//  MatchHiglightsSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 16/12/2023.
//

import SwiftUI

struct MatchHiglightsSection: View {
    let router: Router
    @State private var selectedSPNewsIndex: Int = 0
    
    var body: some View {
        VStack {
            SPSectionHeader(title: "Featured Match", action: {})
                .padding(.horizontal, .containerSpacing)
            newsSection
            
            SPPaginationView(count: 3, selectedIndex: selectedSPNewsIndex)
        }
        .animation(.easeIn, value: selectedSPNewsIndex)
    }
    
    var newsSection: some View {
        TabView(selection: $selectedSPNewsIndex) {
            ForEach(0..<3, id: \.self) { index in
                MatchHiglightsCell(router: router)
                    .tag(index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 170)

    }
}

private struct MatchHiglightsCell: View {
    let router: Router
        
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .trailing) {
                image
                    .frame(width: proxy.size.width)
                
                content
                    .frame(width: proxy.size.width / 2 - 24)
            }
        }
        .padding(.horizontal, .containerSpacing)
    }
    
    var image: some View {
        // swiftlint: disable all
            AsyncImage(url: URL(string: "https://s3-alpha-sig.figma.com/img/a43a/7cde/21e37eb94e779f610f9200536db6856e?Expires=1703462400&Signature=MEqdb7fLxGFe3nDYR52gvQJiEqF40a2NV2fQZazs3hikSljYp2xxMUCChf2r4uGiDeId-WZ7ReR7xBmbS6ci6zExxfZYo7KlIu9veVryLVLs0E268cqAG2Guh8X6wn64Urx8Au~qji9x6kbvEBM64ewRV4dm2LAjG9wGQFNJySUJMNdxLrb04xfs-H5-D7JCbGGkPa6aZE~ZDeMWbIlZCKQnzeLrGF0~7xlkTUaDHhuAFdWN8F3uiUcbCSPkaxTHz4Q1AiqQJfcLOFBtO1qPv5zZb9UdtN7OvkRVIoXu9reOk1-sW7kOTxxDPMly2X0KKr4ns8astu9eVhcMEUu4nA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4")) { imagePhase in
                imagePhase
                    .image?
                    .resizable()
//                    .aspectRatio(contentMode: .fill)
            }
        // swiftlint: enable all
    }
    
    var content: some View {
        Rectangle()
            .fill(Color.spPink)
            .overlay {
                VStack {
                    Text("FIFA World Cup Daily")
                        .font(.h3.bold())
                    Text("Watch match highlights")
                        .font(.regular)
                    SPButton(title: "play", type: .black, size: .small, action: {})
                        
                }.multilineTextAlignment(.center)
                .foregroundStyle(.spBackground)
                .padding(.horizontal, 16)
            }
    }
}

#Preview {
    TabBarView(viewModel: TabBarViewModel.shared )
}
