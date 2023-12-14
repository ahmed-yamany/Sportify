//
//  LeaguesSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 13/12/2023.
//

import SwiftUI

struct LeaguesSection: View {
    let leagues: [SPLeague]
    
    var body: some View {
        VStack {
            SPSectionHeader(title: L10n.Home.Section.Leagues.title, action: {})
                .padding(.horizontal, .containerSpacing)
            
            cells
        }
    }
    
    var cells: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(leagues) { league in
                    LeagueCell(league: league)
                }
            }
            .padding(.horizontal, .containerSpacing)
        }
    }
}

private struct LeagueCell: View {
    let league: SPLeague
    
    var body: some View {
        VStack(spacing: 8) {
            Rectangle()
                .fill(.spTextfieldBackground)
                .overlay {
                    Image(league.image)
                        .resizable()
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
