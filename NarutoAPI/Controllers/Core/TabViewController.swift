//
//  TabViewController.swift
//  NarutoAPI
//
//  Created by David Kochkin on 07.07.2024.
//

import UIKit

/// Controller to house tabs and root tab controllers 
class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }

    func setUpTabs() {
        let characterVC = CharactersViewController()
        let clanVC      = ClanViewController()
        let villagesVC  = VillagesViewController()
        let settingsVC  = SettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        clanVC.navigationItem.largeTitleDisplayMode      = .automatic
        villagesVC.navigationItem.largeTitleDisplayMode  = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode  = .automatic
        
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: clanVC)
        let nav3 = UINavigationController(rootViewController: villagesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Character",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        
        nav2.tabBarItem = UITabBarItem(title: "Clan",
                                       image: UIImage(systemName: "person.3"),
                                       tag: 2)
        
        nav3.tabBarItem = UITabBarItem(title: "Villages",
                                       image: UIImage(systemName: "house"),
                                       tag: 3)
        
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gear"),
                                       tag: 4)
        
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

