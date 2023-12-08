//
//  BarView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI
import Extensions

struct BarView: View {
    @ObservedObject var viewModel: TabBarViewModel
    var body: some View {
        SPShape()
            .iOS { $0.frame(height: 48) }
            .foregroundStyle(.spBackground)
            .overlay { BarButtons(viewModel: viewModel) }
            .padding(.horizontal, 16)
    }
}

private struct BarButtons: View {
    @ObservedObject var viewModel: TabBarViewModel
    var body: some View {
        HStack {
            ForEach(BarType.allCases.indices, id: \.self) { index in
                let type = BarType.allCases[index]
                Spacer()
                BarButton(viewModel: viewModel, type: type) {
                    viewModel.selectedBar = type
                }
                Spacer()
            }
        }
    }
}

private struct BarButton: View {
    @ObservedObject var viewModel: TabBarViewModel
    let type: BarType
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Image(type == viewModel.selectedBar ? type.iconOnSelected : type.icon)
                .iPadOS { $0.font(.largeTitle) }
                .iOS { $0.font(.headline) }
        }
    }
}

#Preview {
    BarView(viewModel: TabBarViewModel())
}
