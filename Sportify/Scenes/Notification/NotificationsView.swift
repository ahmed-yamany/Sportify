//
//  NotificationsView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

struct NotificationsView: View {
    let router: Router
    @StateObject private var viewModel = NotificationsViewModel()
    
    var body: some View {
        VStack {
            Text("hello")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.spBackgroundSmoke)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Notifications")
                    .font(.h2)
                    .foregroundStyle(Color.spTextPrimary)
            }
        }
    }
}

#Preview {
    NotificationsView(router: ModalRouter())
}
