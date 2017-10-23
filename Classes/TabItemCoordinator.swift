import UIKit
import Foundation

public protocol TabItemCoordinator {
    associatedtype RootType: UIViewController
    var rootController: RootType { get }
    var tabBarItem: UITabBarItem { get }
}
