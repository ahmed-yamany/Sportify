//
//  SPTextField.swift
//  Sportify
//
//  Created by Ahmed Yamany on 06/12/2023.
//

import SwiftUI

struct SPTextField: View {
    let title: String
    @Binding var text: String
    var secured: Bool = false
    var icon: Image?
    
    var body: some View {
        HStack {
            if let icon {
                icon
                    .resizable()
                    .frame(width: 16, height: 16)
                    .padding(.trailing, 8)
                    .foregroundStyle(Color.spTextSecondary)
            }
            
            textfield
        }
        .frame(height: 48)
        .padding(.horizontal)
        .background(.spTextfieldBackground)
        .foregroundStyle(Color.spTextPrimary)
    }
    
    private var textfield: some View {
        if secured {
            return AnyView(SecureField(title, text: $text, prompt: prompt))
        } else {
            return AnyView(TextField(title, text: $text, prompt: prompt))
        }
    }
    
    private var prompt: Text {
        Text(title)
            .font(.regular.weight(.medium))
            .foregroundColor(.spTextfieldPlaceholder)
    }
}

#Preview {
    VStack {
        SPTextField(title: "First Name", text: .constant(""), icon: Image(systemName: "magnifyingglass"))
            .padding(.horizontal)
    }
    .frame(maxHeight: .infinity)
    .background(.green)
}
