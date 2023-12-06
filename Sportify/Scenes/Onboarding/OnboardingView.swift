//
//  OnboardingView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

struct OnboardingView<Content: View>: View {
    let title: String
    let subtitle: String
    let overlayTitle: String
    @ViewBuilder var content: () -> Content
    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                SPContainerView {
                    headerSection(proxy: proxy)
                    Spacer()
                    content()
                }
            }
            .ignoresSafeArea()
        }
    }
    
    func headerSection(proxy: GeometryProxy) -> some View {
        VStack(alignment: .leading) {
            SPLogo(onboarding: true)
            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                Text(title.uppercased())
                    .font(.h1.bold())
                Text(subtitle)
                    .font(.medium)
            }
            .padding(.vertical, 16)
        }
        .padding(.top, proxy.safeAreaInsets.top)
        .padding(.horizontal, .containerSpacing)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(minHeight: 246, maxHeight: 320)
        .overlay(alignment: .bottomTrailing) {
            Text(overlayTitle.uppercased())
                .opacity(0.1)
                .font(.custom(size: 100).bold())
        }
        .background(Color.spPink.padding(.top, -300))
        .padding(.horizontal, -.containerSpacing)
        .foregroundStyle(Color.spBackground)
    }
}

#Preview {
    OnboardingView(title: "Create your sportify id",
                   subtitle: "Get news,game updates highlights and more info on your favorite teams",
                   overlayTitle: "Join") {
        
    }
}
