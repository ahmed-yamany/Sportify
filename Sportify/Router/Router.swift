//
//  Router.swift
//  Sportify
//
//  Created by Ahmed Yamany on 06/12/2023.
//

import UIKit

public protocol Router: AnyObject {
    var parentViewController: UIViewController? { get set }
    func present(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void)
    func dismiss(animated: Bool, completion: @escaping () -> Void)
}

public extension Router {
    func present(_ viewController: UIViewController, animated: Bool = true, completion: @escaping () -> Void = {}) {
        present(viewController, animated: animated, completion: completion)
    }
    
    func dismiss(animated: Bool = true, completion: @escaping () -> Void = {}) {
        dismiss(animated: animated, completion: completion)
    }
}
