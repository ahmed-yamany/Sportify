//
//  SPLogo.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

struct SPLogo: View {
    var onboarding: Bool = false
    var body: some View {
        HStack {
            Image(onboarding ? .logoWhite : .logoPink)
                .resizable()
                .frame(width: 28, height: 24)
            Text(L10n.App.name.uppercased())
                .font(.h3.weight(.semibold))
                .foregroundStyle(onboarding ? .spBackground : .spBlack)
                
        }
    }
}

#Preview {
    SPLogo()
}
