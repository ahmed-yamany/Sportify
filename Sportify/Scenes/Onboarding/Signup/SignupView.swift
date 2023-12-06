//
//  SignupView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

struct SignupView: View {
    @StateObject private var viewModel = SignupViewModel()
    var body: some View {
        OnboardingView(title: L10n.Signup.Header.title,
                       subtitle: L10n.Signup.Header.subtitle,
                       overlayTitle: L10n.Signup.Header.overlayTitle) {
            
            VStack(spacing: 32) {
                form
                
                VStack(spacing: 24) {
                    SPButton(title: L10n.Signup.title, type: .black) { }
                    Text(L10n.Signup.Terms.instructions)
                        .lineLimit(10)
                        .multilineTextAlignment(.leading)
                        .font(.regular)
                        .foregroundStyle(Color.spTextSecondary)
                        .frame(minHeight: 60)
                }
            }
            .padding(.vertical, 16)
        }
        
    }
    
    private var form: some View {
        VStack(alignment: .leading, spacing: 24) {
            textfields
            termsButton
        }
    }
    
    private var textfields: some View {
        VStack(spacing: 16) {
            SPTextField(title: L10n.Signup.Textfield.firstname, text: $viewModel.firstName)
            SPTextField(title: L10n.Signup.Textfield.lastname, text: $viewModel.lastName)
            SPTextField(title: L10n.Signup.Textfield.email, text: $viewModel.email)
            
            VStack(spacing: 4) {
                SPTextField(title: L10n.Signup.Textfield.password, text: $viewModel.password, secured: true)
                
                OnboardingInstructionsText(L10n.Signup.Textfield.Password.instructions)
            }
        }
    }
    
    private var termsButton: some View {
        HStack {
            Button {
                viewModel.acceptTerms.toggle()
            } label: {
                Image(systemName: viewModel.acceptTerms ? "checkmark.square" : "square")
                    .font(.custom(size: 20))
            }
            
            Group {
                Text(L10n.Signup.Terms.text)
                
                Button(L10n.Signup.Terms.terms) { }
                    .font(.regular.bold())
                    .overlay(alignment: .bottom) { Rectangle().frame(height: 1).foregroundColor(Color.gray) }
                
                Text("&")
                
                Button(L10n.Signup.Terms.privacy) { }
                    .font(.regular.bold())
                    .overlay(alignment: .bottom) { Rectangle().frame(height: 1).foregroundColor(Color.gray) }
            }
            .font(.regular)
        }
    }
}

#Preview {
    SignupView()
}
