//
//  AuthManager.swift
//  Sportify
//
//  Created by Ahmed Yamany on 06/12/2023.
//

import Foundation

class AuthManager: ObservableObject {
    @Published var isLogin: Bool = false
    
    func login() {
        isLogin = true
    }
    
    func logout() {
        isLogin = false
    }
}
