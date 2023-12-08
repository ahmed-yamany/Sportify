//
//  ProfileView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

struct ProfileView: View {
    let router: Router
    @StateObject private var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {
            
        }
    }
}

#Preview {
    ProfileView(router: ModalRouter())
}
