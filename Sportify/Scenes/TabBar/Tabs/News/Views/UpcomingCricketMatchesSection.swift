//
//  UpcomingCricketMatchesSection.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import SwiftUI

struct UpcomingCricketMatchesSection: View {

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 24) {
                ForEach(0..<3, id: \.self) { _ in
                    UpcomingCrickerMatchCell()
                }
            }
            .padding(.top)
        }
    }
}

private struct UpcomingCrickerMatchCell: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Men T20 Series")
                .font(.h3.bold())
            
            VStack(alignment: .leading) {
                Text("Australia  v England - 2022 • 2nd T20I ")
                    .font(.regular)
                
                Text("03:00, 15 December • Kensington Oval, Bridgetown, Austria ")
                    .font(.small)
                    .foregroundStyle(Color.spTextSecondary)
            }
            
            Text("Australia won by 20 runs")
                .font(.medium)
                .fontWeight(.medium)
                .foregroundStyle(Color.spPink)
            
            teamCell(image: "l-5", name: "Australia", time: "20/20.0 ov. RR: 8.60", score: "172/8")
            teamCell(image: "l-6", name: "South africa", time: "20/20.0 ov. RR: 8.60", score: "152/8")
            Spacer()
         
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 240)
        .background(Color.spTextfieldBackground)
    }
    
    func teamCell(image: String, name: String, time: String, score: String) -> some View {
        HStack(spacing: 8) {
            Image(image)
                .resizable()
                .frame(width: 40, height: 24)
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.medium)
                    .fontWeight(.medium)
                
                Text(time)
                    .font(.regular)
                    .foregroundStyle(Color.spTextSecondary)
            }
            Spacer()
            Text(score)
                .font(.medium)
                .fontWeight(.bold)
            
        }
        .frame(height: 38)
    }
}

#Preview {
    TabBarView(viewModel: TabBarViewModel.shared)
}
