//
//  AboutMyViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 13.03.2024.
//

import UIKit

final class AboutMyViewController: UIViewController {
    var getUser: User!
    
    @IBOutlet var aboutMy: UILabel!
    @IBOutlet var family: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Fon")
        
        aboutMy.text = getUser.person.description
        family.text = getUser.person.family.rawValue

    }


}
