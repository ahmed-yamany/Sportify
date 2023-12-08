//
//  HomeView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

struct HomeView: View {
    let router: Router
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
               searchTextField
            }
            .padding(.horizontal, .containerSpacing)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.spBackgroundSmoke)
        .toolbar {
            ToolbarItem(placement: .navigation) { SPLogo() }
            ToolbarItem(placement: .topBarTrailing) { NotificationButton(router: router)}
        }
    }
    
    var searchTextField: some View {
        SPTextField(title: L10n.Home.Search.title.capitalized,
                    text: $viewModel.searchQ,
                    icon: Image(systemName: "magnifyingglass"))
    }
}

#Preview {
    HomeView(router: ModalRouter())
}
