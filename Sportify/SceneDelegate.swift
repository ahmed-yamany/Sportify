//
//  SceneDelegate.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        AppRouter.shared.makeWindow(from: windowScene)
    }
}
