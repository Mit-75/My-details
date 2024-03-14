//
//  PersonViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 13.03.2024.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var address: UILabel!
    @IBOutlet var age: UILabel!
    
    @IBOutlet var myImage: UIImageView! {
        didSet {
            myImage.layer.cornerRadius = myImage.frame.height / 2
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Fon")
        SetupView()
    }
    
    private func SetupView() {
        name.text = user.person.name
        age.text = "\(user.person.age) лет"
        surname.text = user.person.surname
        address.text = """
        \(user.person.location.region)
        \(user.person.location.sity)
        \(user.person.location.addsress)
        """
    }
}
