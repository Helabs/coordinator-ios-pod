import UIKit

public protocol CoordinatorPath { }

public protocol Coordinator: class {
    var window: UIWindow { get }
    var childs: [Coordinator] { get }

    init(window: UIWindow)
    func start()
    func route(to path: CoordinatorPath)
    func finish()
}

public extension Coordinator {
    var currentViewController: UIViewController? {
        guard let rootViewController = window.rootViewController else { return nil }

        return currentViewController(root: rootViewController)
    }

    private func currentViewController(root: UIViewController) -> UIViewController? {
        guard let presented = root.presentedViewController else { return root }

        if let tabBarController = presented as? UITabBarController, let selected = tabBarController.selectedViewController {
            return currentViewController(root: selected)
        }
        else if let navigationController = presented as? UINavigationController, let top = navigationController.topViewController {
            return currentViewController(root: top)
        }

        return currentViewController(root: presented)
    }
}
