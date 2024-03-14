//
//  AboutMyViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 13.03.2024.
//

import UIKit

final class AboutMyViewController: UIViewController {
    var user: User!
    
    @IBOutlet var aboutMy: UILabel!
    @IBOutlet var family: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Fon")
        
        aboutMy.text = user.person.description
        family.text = user.person.family.rawValue

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let lastVC = segue.destination as? LastViewController else {return}
        lastVC.user = user
        
    }


}
