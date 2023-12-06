import UIKit

public protocol CoordinatorDelegate: NSObjectProtocol {
    func coordinatorDidReachFirstViewController()
    func coordinatorDidReachLastViewController()
}

open class Coordinator<SharedObjectType>: NSObject {
    public private(set) var navigationController: UINavigationController
    public private(set) var sharedObject: SharedObjectType
    public private(set) var currentIndex: Int = -1
    public private(set) var coordinatorTypes: [CoordinatorViewController<SharedObjectType>.Type] = []
    //
    open weak var delegate: CoordinatorDelegate?
    //
    public init(navigationControllerType: UINavigationController.Type, sharedObject: SharedObjectType) {
        self.navigationController = navigationControllerType.init(nibName: nil, bundle: nil)
        self.sharedObject = sharedObject
        super.init()
    }
    //
    open func push() {
        guard currentIndex <= coordinatorTypes.count - 2 else {
            debugPrint("you have reached the last viewController")
            delegate?.coordinatorDidReachLastViewController()
            return
        }
        //
        increaseCurrentIndex()
        //
        let currentCoordinatorType = self.coordinatorTypes[currentIndex]
        let currentCoordinator = currentCoordinatorType.init()
        self.push(to: currentCoordinator)
    }
    //
    open func push(to viewController: CoordinatorViewController<SharedObjectType>) {
        viewController.coordinator = self
        viewController.sharedObject = self.sharedObject
        navigationController.pushViewController(viewController, animated: true)
    }
    //
    open func pop() {
        guard currentIndex > 0 else {
            debugPrint("you reached the first viewController")
            delegate?.coordinatorDidReachFirstViewController()
            return
        }
        decreaseCurrentIndex()
    }
    //
    open func popToRoot() {
        currentIndex = 0
        navigationController.popToRootViewController(animated: true)
    }
    //
    public func setCoordinatorTypes(_ coordinatorTypes: [CoordinatorViewController<SharedObjectType>.Type]) {
        self.coordinatorTypes = coordinatorTypes
        push()
    }
    //
    private func increaseCurrentIndex() {
         self.currentIndex = currentIndex == coordinatorTypes.count - 1 ? currentIndex : currentIndex + 1
     }
     //
     private func decreaseCurrentIndex() {
         currentIndex -= 1
     }
}
