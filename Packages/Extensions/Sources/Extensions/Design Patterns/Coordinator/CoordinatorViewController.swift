//
//  File.swift
//
//
//  Created by Ahmed Yamany on 13/04/2023.
//

import UIKit

open class CoordinatorViewController<SharedObjectType>: UIViewController {
    public var coordinator: Coordinator<SharedObjectType>!
    public var sharedObject: SharedObjectType!
    //
    /// used to notify the coordinator when the view controller is popped from the navigation stack.
    open override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        if parent == nil {
            self.coordinator.pop()
        }
    }
}
