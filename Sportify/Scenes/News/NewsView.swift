//
//  NewsView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

struct NewsView: View {
    let router: Router
    @StateObject private var viewModel = NewsViewModel()
    
    var body: some View {
        VStack {
            
        }
    }
}

#Preview {
    NewsView(router: ModalRouter())
}
