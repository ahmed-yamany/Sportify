//
//  LoginView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        OnboardingView(title: L10n.Login.Header.title,
                       subtitle: L10n.Login.Header.subtitle,
                       overlayTitle: L10n.Login.Header.overlayTitle) {
                form
        }
    }
    
    private var form: some View {
        VStack(alignment: .leading, spacing: 28) {
            VStack(alignment: .trailing, spacing: 4) {
                textfields
                forgotPassword
            }
            VStack(spacing: 12) {
                signinButton
                instructionsText
                Text(L10n.Login.or.uppercased())
                signupButton
            }
        }
        .padding(.vertical, 16)
    }
    
    private var textfields: some View {
        VStack(spacing: 16) {
            // email
            SPTextField(title: L10n.Login.Textfield.email, text: $viewModel.email)
            // password
            SPTextField(title: L10n.Login.Textfield.password, text: $viewModel.password, secured: true)
        }
    }
    
    private var forgotPassword: some View {
        Button(L10n.Login.forgotPassword) { }
            .font(.regular)
            .foregroundStyle(Color.spTextSecondary)
    }
    
    private var signinButton: some View {
        SPButton(title: L10n.Login.Header.overlayTitle, type: .black) { }
    }
    
    private var instructionsText: some View {
        OnboardingInstructionsText(L10n.Login.instructions)
    }
    
    private var signupButton: some View {
        SPButton(title: L10n.Signup.Header.overlayTitle, type: .gray) { }
    }
}

#Preview {
    LoginView()
}

struct OnboardingInstructionsText: View {
    let text: String
    init(_ text: String) {
        self.text = text
    }
    var body: some View {
        Text(text)
            .lineLimit(10)
            .multilineTextAlignment(.leading)
            .font(.regular)
            .foregroundStyle(Color.spTextSecondary)
            .frame(minHeight: 66)
    }
}
