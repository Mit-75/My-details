//
//  PersonViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 13.03.2024.
//

import UIKit

final class PersonViewController: UIViewController {
    var getUser: User!
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var address: UILabel!
    @IBOutlet var age: UILabel!
    
    @IBOutlet var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Fon")
        SetupView()
    }
}

extension PersonViewController {
    private func SetupView() {
        myImage.layer.cornerRadius = myImage.frame.width / 2
        name.text = getUser.person.name
        age.text = "\(getUser.person.age) лет"
        surname.text = getUser.person.surname
        address.text = """
        \(getUser.person.location.region)
        \(getUser.person.location.sity)
        \(getUser.person.location.addsress)
        """
    }
}
