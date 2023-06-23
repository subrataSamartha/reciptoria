//
//  TabBarViewController.swift
//  reciptoria
//
//  Created by subrata Samartha on 23/06/23.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = HomeViewController()
        let vc2 = DiscoverViewController()
        let vc3 = SavedViewController()
        
        vc1.title = "Home"
        vc2.title = "Discovery"
        vc3.title = "Saved Recipes"
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        
        
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        nav1.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            tag: 1)
        nav2.tabBarItem = UITabBarItem(
            title: "Discovery",
            image: UIImage(systemName: "magnifyingglass"),
            tag: 2)
        nav3.tabBarItem = UITabBarItem(
            title: "Saved",
            image: UIImage(systemName: "bookmark.square"),
            tag: 3)
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.customPewterBlue], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        UITabBar.appearance().tintColor = UIColor.customPewterBlue
        
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: true)
        
    }
}
