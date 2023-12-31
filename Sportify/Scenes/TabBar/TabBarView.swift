//
//  TabBarView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI
import Extensions

struct TabBarView: View {
    @ObservedObject var viewModel: TabBarViewModel
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $viewModel.selectedBar) {
                ForEach(BarType.allCases, id: \.hashValue) { type in
                    type.view
                        .tag(type)
                        .ignoresSafeArea()
                }
            }

            BarView(viewModel: viewModel)
                .transition(.move(edge: .bottom))
                .isHidden(viewModel.isHidden)
        }
        .animation(.easeInOut, value: viewModel.selectedBar)
        .animation(.interactiveSpring, value: viewModel.isHidden)
        .onAppear {
            UITabBar.appearance().isHidden = true
        }
    }
}

#Preview {
    TabBarView(viewModel: TabBarViewModel.shared)
}
