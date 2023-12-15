//
//  UpcomingFootballMatchesSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import SwiftUI

struct UpcomingFootballMatchesSection: View {
    @ObservedObject var viewModel: NewsViewModel
    @State private var matches: [FootballMatch] = []
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 24) {
                ForEach(matches) { matche in
                    UpcomingFootballMatchesCell(match: matche)
                }
            }
            .padding(.top)
        }
        .task {
            do {
                matches = try await viewModel.getUpcomingFootballMatches()
            } catch { }
        }
    }
}

private struct UpcomingFootballMatchesCell: View {
    let match: FootballMatch
    
    var body: some View {
        VStack {
            top
            Spacer()
            middle
            Spacer()
            bottom
        }
        .padding(16)
        .background {
            MatchShape()
                .foregroundStyle(Color.spBlack.opacity(0.04))
        }
        .background(Color.spTextfieldBackground)
        
        .frame(maxWidth: .infinity)
        .frame(height: 190)
    }
    
    var top: some View {
        HStack {
            AsyncImage(url: URL(string: match.league.image)) { imagePhase in
                imagePhase
                    .image?
                    .resizable()
                    
            }
            .frame(width: 24, height: 24)
            Spacer()
            
            Text(match.time)
                .font(.small)
                .padding(.vertical, 3)
                .padding(.horizontal, 6)
                .background(Color.spTextSecondary.opacity(0.2))
        }
    }
    
    var middle: some View {
        HStack {
            HStack {
                Spacer()
                teamText(match.team1.name)
                Spacer()
                teamImage(match.team1.image)
            }
            Spacer(minLength: 28)
            HStack {
                teamImage(match.team2.image)
                Spacer()
                teamText(match.team2.name)
                Spacer()
            }
        }
        .frame(height: 48)
    }
    
    var bottom: some View {
        VStack(alignment: .leading) {
            Text("PLAYOFFS- ROUND 1")
                .font(.regular)
            Text("Best of 3")
                .font(.small)
        }
        .foregroundStyle(Color.spBackground)
        .padding(.horizontal, .containerSpacing)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 55)
        .background(Color.spBlack)
        .padding(.horizontal, -.containerSpacing)
        .padding(.bottom, -.containerSpacing)
    }
    
    func teamText(_ text: String) -> some View {
        Text(text)
            .font(.medium)
            .fontWeight(.medium)
    }
    
    func teamImage(_ urlString: String) -> some View {
        AsyncImage(url: URL(string: urlString)) { imagePhase in
            imagePhase
                .image?
                .resizable()
                .aspectRatio(contentMode: .fit)
                
        }
        .frame(width: 48)
    }
}

#Preview {
    TabBarView(viewModel: TabBarViewModel.shared)
}
