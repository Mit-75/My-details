//
//  TabBarViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 13.03.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarApperience = UITabBarAppearance()
        tabBarApperience.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarApperience
        tabBar.scrollEdgeAppearance = tabBarApperience
        
        dataTransfer()
    }
    
    private func dataTransfer() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let personVC = $0 as? PersonViewController {
                personVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let aboutMyVC = navigationVC.topViewController as? AboutMyViewController
                aboutMyVC?.user = user
            }
        }
    }
}



