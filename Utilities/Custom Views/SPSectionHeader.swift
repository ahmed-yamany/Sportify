//
//  SectionHeader.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import SwiftUI

struct SPSectionHeader: View {
    let title: String
    var action: (() -> Void)?

    var body: some View {
        HStack {
            Text(title)
                .font(.h3.bold())
            Spacer()
            
            if let action {
                Button(L10n.Home.Section.Button.title) {
                    action()
                }
                .font(.medium.weight(.medium))
                .foregroundStyle(Color.spPink)
            }
        }
    }
}

#Preview {
    SPSectionHeader(title: "Fifa World Cup")
}
