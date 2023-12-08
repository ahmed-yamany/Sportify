//
//  AppRouter.swift
//  Sportify
//
//  Created by Ahmed Yamany on 06/12/2023.
//

import UIKit
import SwiftUI
import Combine

final class AppRouter: Router {
    public static let shared = AppRouter()
    
    @ObservedObject var authManager = AuthManager()
    var cancellable: AnyCancellable!
    
    var window: UIWindow?
    var parentViewController: UIViewController?
    
    private init() { }
    
    func makeWindow(from windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        window.makeKeyAndVisible()
        self.window = window
        
        cancellable = AnyCancellable(authManager.$isLogin.sink { isLogin in
            self.updateRootViewController(isLogin)
        })
    }
    
    func present(_ viewController: UIViewController, animated: Bool = true, completion: @escaping () -> Void = {}) {
        guard let window else {
            debugPrint("App Router Window is nil")
            return
        }
        window.rootViewController = viewController
    }
    
    func dismiss(animated: Bool = true, completion: @escaping () -> Void = {}) {
        authManager.logout()
    }
    
    private func updateRootViewController(_ isLogin: Bool) {
        if isLogin {
            self.present(authViewController())
        } else {
            self.present(notAuthViewController())
        }
    }
    
    private func authViewController() -> UIViewController {
        UIHostingController(rootView: TabBarView(viewModel: TabBarViewModel()))
    }
    
    private func notAuthViewController() -> UIViewController {
        let router = ModalRouter()
        router.parentViewController = UIHostingController(rootView: SplashView(router: router))
        return router.parentViewController ?? UIViewController()
    }
}
