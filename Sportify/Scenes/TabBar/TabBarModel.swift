//
//  TabBarModel.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI
import Extensions

enum BarType: String, CaseIterable, Hashable {
    case home, news, highlights, profile
    
    var icon: ImageResource {
        switch self {
            case .home: .tabbarHome
            case .news: .tabbarNews
            case .highlights: .tabbarHighlights
            case .profile: .tabbarProfile
        }
    }
    
    var iconOnSelected: ImageResource {
        switch self {
            case .home: .tabbarHomeSelected
            case .news: .tabbarNewsSelected
            case .highlights: .tabbarHighlightsSelected
            case .profile: .tabbarProfileSelected
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .home: homeView()
        case .news: newsView()
        case .highlights: highlightsView()
        case .profile: profileView()
        }
    }
    
    private func homeView() -> some View {
        let router = NavigationRouter(navigationController: SPNavigationController())
        let controller = UIHostingController(rootView: HomeView(router: router))
        router.present(controller)
        return HostingView(controller: router.parentViewController ?? UIViewController())
    }
    
    private func newsView() -> some View {
        let router = NavigationRouter(navigationController: UINavigationController())
        let controller = UIHostingController(rootView: NewsView(router: router))
        router.present(controller)
        return HostingView(controller: router.parentViewController ?? UIViewController())
    }
    
    private func highlightsView() -> some View {
        let router = NavigationRouter(navigationController: UINavigationController())
        let controller = UIHostingController(rootView: HighlightsView(router: router))
        router.present(controller)
        return HostingView(controller: router.parentViewController ?? UIViewController())
    }
    
    private func profileView() -> some View {
        let router = NavigationRouter(navigationController: UINavigationController())
        let controller = UIHostingController(rootView: ProfileView(router: router))
        router.present(controller)
        return HostingView(controller: router.parentViewController ?? UIViewController())
    }
}
