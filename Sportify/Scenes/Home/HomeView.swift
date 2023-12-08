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
        VStack {
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar {
            ToolbarItem(placement: .navigation) { SPLogo() }
            ToolbarItem(placement: .topBarTrailing) { NotificationButton(router: router)}
        }
        .background(Color.spBackgroundSmoke)
    }
}

#Preview {
    HomeView(router: ModalRouter())
}
