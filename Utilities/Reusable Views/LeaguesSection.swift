//
//  LeaguesSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 13/12/2023.
//

import SwiftUI

struct LeaguesSection: View {
    let leagues: [SPLeague]
    var title: Bool = true
    
    var body: some View {
        VStack {
            if title {
                SPSectionHeader(title: L10n.Home.Section.Leagues.title, action: {})
                    .padding(.horizontal, .containerSpacing)
            }
            cells
        }
    }
    
    private var cells: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(leagues) { league in
                    LeagueCell(league: league)
                }
            }
            .padding(.horizontal, .containerSpacing)
        }
        .frame(height: 138)
    }
}

private struct LeagueCell: View {
    let league: SPLeague
    
    var body: some View {
        VStack(spacing: 8) {
            Rectangle()
                .fill(.spTextfieldBackground)
                .overlay {
                    AsyncImage(url: URL(string: league.image)) {
                        $0.image?
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 48, height: 48)
                }
                .frame(height: 80)
            
            Text(league.name)
                .font(.regular)
                .fontWeight(.medium)
            Spacer()
        }
        .frame(width: 80)
    }
}

#Preview {
    LeaguesSection(leagues: [])
}
