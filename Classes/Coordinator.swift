import UIKit

protocol Coordinator: class {
    var window: UIWindow { get }
    var childs: [Coordinator] { get }

    init(window: UIWindow)
<<<<<<< HEAD
=======
    func start()
>>>>>>> Initial commit
}
