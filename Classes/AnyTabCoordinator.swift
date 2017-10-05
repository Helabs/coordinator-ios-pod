import UIKit

final class AnyTabCoordinator {
    let rootController: UIViewController
    let tabBarItem: UITabBarItem
    let coordinator: Coordinator

    init<T: TabItemCoordinator>(_ tabCoordinator: T) {
        rootController = tabCoordinator.rootController
        tabBarItem = tabCoordinator.tabBarItem
        //swiftlint:disable force_cast
        coordinator = tabCoordinator as! Coordinator
        //swiftlint:enable force_cast
    }

    func start() {
        coordinator.start()
    }
}

func deGenericize<T: TabItemCoordinator>(_ coordinator: T) -> AnyTabCoordinator {
    return AnyTabCoordinator(coordinator)
}
