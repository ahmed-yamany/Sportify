//
//  NotificationButton.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

struct NotificationButton: View {
    let router: Router
    
    var body: some View {
        Button {
            let controller = UIHostingController(rootView: NotificationsView(router: router))
            router.present(controller)
        } label: {
            Image(.iconBell)
        }
    }
}
