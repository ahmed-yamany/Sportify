//
//  SPButton.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

struct SPButton: View {
    enum SPButtonType {
        case pink, black, gray
        var backgroundColor: Color {
            switch self {
                case .pink: Color.spPink
                case .black: Color.spBlack
                case .gray: Color.gray.opacity(0.3)
            }
        }
        
        var titleColor: Color {
            switch self {
                case .pink, .black: Color.spBackground
                case .gray: Color.spTextPrimary
            }
        }
    }
    
    let title: String
    var type: SPButtonType = .pink
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            SPShape()
                .foregroundStyle(type.backgroundColor)
                .overlay {
                    Text(title.uppercased())
                        .font(.medium.weight(.medium))
                        .foregroundStyle(type.titleColor)
                }
        }
        .frame(height: 48)
        .frame(maxWidth: .infinity)
    }
}
