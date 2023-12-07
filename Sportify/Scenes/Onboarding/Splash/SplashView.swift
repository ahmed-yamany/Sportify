//
//  OnboardingView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI
import Extensions

struct SplashView: View {
    let router: Router
        
    var body: some View {
        SPContainerView {
            logoSection
            Spacer()
            VStack(alignment: .leading, spacing: 20) {
                titleSubtitleSection
                buttonsSection
            }
            Spacer()
        }
    }
    
    private var logoSection: some View {
        HStack(alignment: .top) {
            SPLogo()
            Spacer()
            Image(.splashVector)
                .resizable()
                .frame(width: .screenSize.width / 2)
                .iOS { $0.frame(height: .screenSize.height / 2) }
                .iPadOS { $0.frame(height: .screenSize.height / 1.5) }
                .padding(.trailing, -.containerSpacing)
        }
    }
    
    private var titleSubtitleSection: some View {
        VStack(alignment: .leading) {
            Text(L10n.Splash.title.uppercased())
                .font(.custom(size: 48))
            Text(L10n.Splash.subtitle)
                .font(.medium)
        }
    }

    private var buttonsSection: some View {
        VStack(spacing: 8) {
            SPButton(title: L10n.Login.title) {
                let loginView = LoginView(router: router)
                let viewController = UIHostingController(rootView: loginView)
                router.present(viewController)
            }
            
            SPButton(title: L10n.Signup.title, type: .gray) {
                let signupView = SignupView(router: router)
                let viewController = UIHostingController(rootView: signupView)
                router.present(viewController)
            }
        }
    }
}

 #Preview {
     SplashView(router: ModalRouter())
 }
