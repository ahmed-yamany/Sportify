//
//  AppRouter.swift
//  Sportify
//
//  Created by Ahmed Yamany on 06/12/2023.
//

import UIKit
import SwiftUI

final class AppRouter: Router {
    public static let shared = AppRouter()
    
    var authManager = AuthManager()
    var window: UIWindow?
    var parentViewController: UIViewController?
    
    private init() {}
    
    func makeWindow(from windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        window.makeKeyAndVisible()
        self.window = window
        updateRootViewController()
    }
    
    func present(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        guard let window else {
            debugPrint("App Router Window is nil")
            return
        }
        window.rootViewController = viewController
    }
    
    func dismiss(animated: Bool, completion: @escaping () -> Void) {
        authManager.logout()
        updateRootViewController()
    }
    
    private func updateRootViewController() {
        guard let window else {
            debugPrint("App Router Window is nil")
            return
        }
        
        if authManager.isLogin() {
            window.rootViewController = authViewController()
        } else {
            window.rootViewController = notAuthViewController()
        }
    }
    
    private func authViewController() -> UIViewController? {
        UIViewController()
    }
    
    private func notAuthViewController() -> UIViewController? {
        let router = ModalRouter()
        router.parentViewController = UIHostingController(rootView: SplashView(router: router))
        return router.parentViewController
    }
}
