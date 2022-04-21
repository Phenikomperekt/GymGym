//
//  MainTabBar.swift
//  GymGym
//
//  Created by Evgeny Mastepan on 19.04.2022.
//

import UIKit

class MainTabBar: UITabBarController {

    private enum TabBarItem {
        case firstWeek
        case secondWeek
        case thirdWeek
        case fourthWeek
        case setup

        var title: String {
            switch self {
            case .firstWeek:
                return "Понедельник"
            case .secondWeek:
                return "Вторник"
            case .thirdWeek:
                return "Четверг"
            case .fourthWeek:
                return "Пятница"
            case .setup:
                return "Неделя"

            }
        }

        var image: UIImage? {
            let largeIcon = UIImage.SymbolConfiguration(pointSize: 22)

            switch self {
            case .firstWeek:
                return UIImage(systemName: "1.circle", withConfiguration: largeIcon)?.withTintColor(.systemRed, renderingMode: .alwaysOriginal)
            case .secondWeek:
                return UIImage(systemName: "2.circle", withConfiguration: largeIcon)?.withTintColor(.systemOrange, renderingMode: .alwaysOriginal)
            case .thirdWeek:
                return UIImage(systemName: "3.circle", withConfiguration: largeIcon)?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
            case .fourthWeek:
                return UIImage(systemName: "4.circle", withConfiguration: largeIcon)?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
            case .setup:
                return UIImage(systemName: "h.circle", withConfiguration: largeIcon)?.withTintColor(.white, renderingMode: .alwaysOriginal)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBar()
        self.tabBar.backgroundColor = .black
        self.tabBar.isTranslucent = false
        self.tabBar.unselectedItemTintColor = .systemGray
        self.tabBar.tintColor = .white
    }

    func setupTabBar() {
        let items: [TabBarItem] = [.firstWeek, .secondWeek, .thirdWeek, .fourthWeek, .setup]
        self.viewControllers = items.map({ tabBarItem in
            switch tabBarItem {
            case .firstWeek:
                return UINavigationController(rootViewController: FirstWeekViewController())
            case .secondWeek:
                return UINavigationController(rootViewController: SecondWeekViewController())
            case .thirdWeek:
                return UINavigationController(rootViewController: ThirdWeekViewController())
            case .fourthWeek:
                return UINavigationController(rootViewController: FourthWeekViewController())
            case .setup:
                return UINavigationController(rootViewController: SetupViewController())
            }
          })
        self.viewControllers?.enumerated().forEach({ (index, vc) in
            vc.tabBarItem.title = items[index].title
            vc.tabBarItem.image = items[index].image
        })
    }
}
