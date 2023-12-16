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
    @State private var showLogoutSheet: Bool = false
    @State private var logoutSheetOffset: CGFloat = 100
    
    init(router: Router) {
        self.router = router
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    var body: some View {
        // swiftlint: disable all
        OnboardingView(title: "Welcome to Sportify ID",
                       subtitle: "Your  Sportify ID grants you access to the exclusive offers, personalized content, and more- so you can keep being one of the best fans out there.", scrollable: false) {
            // swiftlint: enable all
            List {
                Section {
                    Text("logout")
                        .onTapGesture {
                            showLogoutSheet = true
                        }
                }
            }
            .foregroundStyle(Color.spTextPrimary)
            .padding(.horizontal, -.containerSpacing)
            .sheet(isPresented: $showLogoutSheet) {
                VStack(spacing: 16) {
                    Spacer()
                    Text("Do you realy want to Logout")
                        .font(.medium)
                        .fontWeight(.medium)
                    Spacer()
                    HStack(spacing: 16) {
                        SPButton(title: "Cancel", type: .pink) {
                            showLogoutSheet = false
                        }
                        SPButton(title: "Logout", type: .gray) {
                            AppRouter.shared.dismiss()
                        }
                    }
                }
                .padding(.containerSpacing)
                .presentationDetents([.fraction(0.2)])
                .presentationDragIndicator(.visible)
            }
        }
        .animation(.spring, value: showLogoutSheet)
    }
}

#Preview {
    TabBarView(viewModel: TabBarViewModel.shared)
}
