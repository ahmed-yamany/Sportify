//
//  HighlightsView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

struct HighlightsView: View {
    let router: Router
    @StateObject private var viewModel = HighlightsViewModel()
    
    var body: some View {
        VStack {
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.spBackgroundSmoke)
    }
}

#Preview {
    HighlightsView(router: ModalRouter())
}
