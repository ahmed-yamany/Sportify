//
//  UpcomingBasketballMatchesSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import SwiftUI

struct UpcomingBasketballMatchesSection: View {
    @ObservedObject var viewModel: NewsViewModel
    @State private var matches: [BasketballMatch] = []
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 24) {
                ForEach(matches) { matche in
                    UpcomingBasketballMatchCell(match: matche)
                }
            }
            .padding(.top)
        }
        .task {
            do {
                matches = try await viewModel.getUpcomingBasketballMatches()
            } catch { }
        }
    }
}

private struct UpcomingBasketballMatchCell: View {
    let match: BasketballMatch
    
    var body: some View {
        VStack {
            Spacer()
            top
            Spacer()
            bottom
            Spacer()
        }
        .padding(16)
        .background {
            MatchShape()
                .foregroundStyle(Color.spBlack.opacity(0.04))
        }
        .background(Color.spTextfieldBackground)
        
        .frame(maxWidth: .infinity)
        .frame(height: 140)
    }
    
    var top: some View {
        HStack {
            HStack {
                Spacer()
                teamName(match.team1.name)
                Spacer()
                teamImage(match.team1.image)
            }
            Spacer(minLength: 28)
            HStack {
                teamImage(match.team2.image)
                Spacer()
                teamName(match.team2.name)
                Spacer()
            }
        }
        .frame(height: 40)
    }
    
    var bottom: some View {
        HStack {
            teamScore("\(match.team1.score)")
            Spacer()
            teamScore("Final")
            Spacer()
            teamScore("\(match.team2.score)")
               
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
    func teamScore(_ text: String) -> some View {
        Text(text)
            .font(.h3.bold())
    }
    
    func teamName(_ text: String) -> some View {
        Text(text)
            .font(.regular)
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
