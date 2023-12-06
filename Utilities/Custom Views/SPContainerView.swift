//
//  SPMainView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

struct SPContainerView<Content: View>: View {
    let content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 0, content: content)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, .containerSpacing)
        .background(Color.spBackground)
        .foregroundStyle(Color.spTextPrimary)
    }
}

#Preview {
    SPContainerView(content: {})
}
