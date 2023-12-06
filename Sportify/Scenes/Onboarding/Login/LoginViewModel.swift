//
//  LoginViewModel.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
}
