//
//  ViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 12.03.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    let getUser = User.getUser()
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Proba")
        userTextField.text = "User"
        passwordTextField.text = "123"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        
        tabBarVC.viewControllers?.forEach{ viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcome = userTextField.text
                welcomeVC.getUser = getUser
            } else if let personVC = viewController as? PersonViewController {
                personVC.getUser = getUser
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutMyVC = navigationVC.topViewController as? AboutMyViewController
                aboutMyVC?.getUser = getUser
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButton() {
        guard let imputText = userTextField.text, !imputText.isEmpty else {
            showAlert(
                withTitle: "Text field is empty",
                andMessage: "Please enter your name"
            )
            return
        }
        guard userTextField.text == getUser.userName
                && passwordTextField.text == getUser.passvord else {
            showAlert(
                withTitle: "Invalid Login or Password",
                andMessage: "Please enter correct your Login and Password") {
                    self.passwordTextField.text = ""
                }
            return
        }
    }
    
    @IBAction func userNameButton() {
        showAlert(
            withTitle: "User Name: \(getUser.userName)",
            andMessage: "Good Luck 😉!"
        )
    }
    @IBAction func passwordButton() {
        showAlert(
            withTitle: "Password: \(getUser.passvord)",
            andMessage: "Good Luck 😉!"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        self.userTextField.text = ""
        self.passwordTextField.text = ""
    }
}

extension LoginViewController {
    
    func showAlert(
        withTitle title: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) {
        let allert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        allert.addAction(okAction)
        present(allert, animated: true)
    }
}


