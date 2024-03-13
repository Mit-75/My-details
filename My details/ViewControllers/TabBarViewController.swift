//
//  TabBarViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 13.03.2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarApperience = UITabBarAppearance()
        tabBarApperience.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarApperience
        tabBar.scrollEdgeAppearance = tabBarApperience
    }
}
