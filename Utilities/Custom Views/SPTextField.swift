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
    
    var body: some View {
        textfield
            .frame(height: 48)
            .padding(.horizontal)
            .background(.spTextfieldBackground)
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
    SPTextField(title: "First Name", text: .constant(""))
}
