import UIKit

public protocol Coordinator: class {
    var window: UIWindow { get }
    var childs: [Coordinator] { get }

    init(window: UIWindow)
    func start()
}
