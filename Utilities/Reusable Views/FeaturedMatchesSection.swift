//
//  MatchesSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 13/12/2023.
//

import SwiftUI

struct FeaturedMatchesSection: View {
    let featuredMatches: [SPFeaturedMatch]
    let title: String
    private let columns: [GridItem] = [GridItem(.adaptive(minimum: .matchCellWidth, maximum: .matchCellWidth  + 16))]
    
    var body: some View {
        VStack {
            SPSectionHeader(title: title)
                .padding(.horizontal, .containerSpacing)
            
            cells
        }
    }
    
    var cells: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(featuredMatches) { featuredMatch in
                FeaturedMatchCell(featuredMatch: featuredMatch)
            }
        }
    }
}

struct FeaturedMatchCell: View {
    let featuredMatch: SPFeaturedMatch
    
    var body: some View {
        VStack(spacing: 12) {
            image
            
            VStack(spacing: 8) {
                Text(featuredMatch.title)
                    .font(.small)
                
                Text(featuredMatch.subtitle)
                    .font(.regular)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 8)
            
        }
        .frame(width: .matchCellWidth, height: 214)
    }
    
    var image: some View {
        ZStack(alignment: .bottom) {
            Image(featuredMatch.image)
                .resizable()
                .padding(.bottom, 10)
            
            timeShape
        }
        .frame(height: 142)
        
    }
    
    var timeShape: some View {
        HStack(spacing: 4) {
            Image(systemName: "play.fill")
                .resizable()
                .frame(width: 8, height: 8)
            
            Text(featuredMatch.time)
                .font(.small.bold())
        }
        .foregroundStyle(Color.spBackground)
        .background {
            SPShape()
                .fill(.spPink)
                .frame(width: 76, height: 24)
        }
    }
}

#Preview {
    FeaturedMatchesSection(featuredMatches: [], title: "Popular Match")
}
