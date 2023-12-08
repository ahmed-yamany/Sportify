//
//  Coordinator.swift
//  Sportify
//
//  Created by Ahmed Yamany on 06/12/2023.
//

import UIKit

class Coordinator {
    private var currentIndex: Int = -1

    var children: [UIViewController] = []
    var router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func present(animated: Bool = true, completion: @escaping () -> Void = {}) {
        if currentIndex >= children.count-1 {
            print("you reached the last")
            return
        }
        currentIndex += 1
        let currentchild = children[currentIndex]
        presentChild(currentchild, animated: animated, completion: completion)
    }
    
    private func presentChild(_ child: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        router.present(child, animated: animated, completion: completion)
    }
    
    func dismiss(animated: Bool = true, completion: @escaping () -> Void = {}) {
        if currentIndex <= 0 {
            print("you reached the first")
            return
        }
        router.dismiss(animated: animated, completion: completion)
        currentIndex -= 1
    }
}
