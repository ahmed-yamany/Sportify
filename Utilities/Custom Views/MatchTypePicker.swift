//
//  MatchTypePicker.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import SwiftUI

struct MatchTypePicker: View {
    @Binding var selectedMatchType: SPMatchType
    @Namespace var animation
    
    var body: some View {
        HStack(spacing: 28) {
            ForEach(SPMatchType.allCases, id: \.hashValue) { matchType in
                Text(matchType.rawValue)
                    .font(.medium)
                    .foregroundStyle(matchType == selectedMatchType ? .spTextPrimary : .spTextSecondary)
                    .padding(.bottom, 8)
                    .onTapGesture {
                        selectedMatchType = matchType
                    }
                    .overlay(alignment: .bottom) {
                        if matchType == selectedMatchType {
                            Rectangle()
                                .fill(Color.spPink)
                                .frame(height: 2)
                                .matchedGeometryEffect(id: "MatchTypePicker", in: animation)
                        }
                    }
            }
        }
        .animation(.interpolatingSpring, value: selectedMatchType)
        .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
    }
}
