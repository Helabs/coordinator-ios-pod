import UIKit
import Foundation

public class AnyTabCoordinator {
    public let rootController: UIViewController
    public let tabBarItem: UITabBarItem
    public let coordinator: Coordinator

    public init<T: TabItemCoordinator>(_ tabCoordinator: T) {
        rootController = tabCoordinator.rootController
        tabBarItem = tabCoordinator.tabBarItem
        //swiftlint:disable force_cast
        coordinator = tabCoordinator as! Coordinator
        //swiftlint:enable force_cast
    }

    public func start() {
        coordinator.start()
    }
}

public func deGenericize<T: TabItemCoordinator>(_ coordinator: T) -> AnyTabCoordinator {
    return AnyTabCoordinator(coordinator)
}
