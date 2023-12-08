//
//  OnboardingRouter.swift
//  Sportify
//
//  Created by Ahmed Yamany on 06/12/2023.
//

import UIKit
import Extensions

class ModalRouter: Router {
    public var parentViewController: UIViewController?
    
    func present(_ viewController: UIViewController, animated: Bool = true, completion: @escaping () -> Void = {}) {
        guard parentViewController != nil else {
            debugPrint("Modal Router parentViewController is nil")
            parentViewController = viewController
            return
        }
        viewController.modalPresentationStyle = .fullScreen
        parentViewController?.topMostViewController().present(viewController, animated: animated, completion: completion)
    }
    
    func dismiss(animated: Bool = true, completion: @escaping () -> Void = {}) {
        parentViewController?.topMostViewController().dismiss(animated: animated, completion: completion)
    }
}
