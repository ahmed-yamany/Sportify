//
//  FIFASection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import SwiftUI

struct FIFASection: View {
    let matches: [SPMatch]
    let title: String
    var viewAllAction: (() -> Void)?
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        VStack {
            SPSectionHeader(title: title, action: viewAllAction)
                .padding(.horizontal, .containerSpacing)
            cells
        }
    }
    
    var cells: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(matches) { match in
                    FIFASectionCell(match: match)
                }
            }
            .padding(.horizontal, .containerSpacing)
        }
        .frame(height: 112)
    }
}

private struct FIFASectionCell: View {
    let match: SPMatch
    private let cellWidth: CGFloat = .screenSize.width - 80
    
    var body: some View {
        HStack {
            Image(match.image)
                .resizable()
                .frame(width: (cellWidth / 2) - 10)
                .overlay {
                    Image(systemName: "play.fill")
                        .font(.h1)
                        .foregroundStyle(Color.spBackground)
                }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("\(match.firstTeam.name.uppercased()) VS \(match.secondTeam.name.uppercased())")
                    .font(.medium.bold())
                Text(match.description.capitalized)
                    .font(.small)
                    .foregroundStyle(Color.spTextSecondary)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(8)
        .frame(width: cellWidth)
        .frame(height: 112)
        .background(Color.spBackground)
    }
}

#Preview {
    FIFASection(matches: [], title: L10n.Home.Section.Fifa.title, viewAllAction: {})
}
