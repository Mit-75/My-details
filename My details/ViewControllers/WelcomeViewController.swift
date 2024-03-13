//
//  WelcomeViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 12.03.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLable: UILabel!
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Proba")
        welcomeLable.text = "Welcome, \(welcome ?? "") 😉!"
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}


