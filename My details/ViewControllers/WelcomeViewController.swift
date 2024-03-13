//
//  WelcomeViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 12.03.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    var getUser: User!
    
    @IBOutlet var welcomeLable: UILabel!
    @IBOutlet var myNameLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Proba")
        welcomeLable.text = "Welcome, \(welcome ?? "") 😉!"
        myNameLabel.text = """
        My name is
        \(getUser.person.fullName)
     """
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}


