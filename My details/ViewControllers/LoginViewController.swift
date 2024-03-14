//
//  ViewController.swift
//  My details
//
//  Created by Dmitry Parhomenko on 12.03.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Proba")
        userTextField.text = user.userName
        passwordTextField.text = user.passvord
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? TabBarViewController else { return }
        tabBarVC.user = user
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userTextField.text == user.userName,
                passwordTextField.text == user.passvord else {
            showAlert(
                withTitle: "Invalid Login or Password",
                andMessage: "Please enter correct your Login and Password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    @IBAction func userNameButton() {
        showAlert(
            withTitle: "User Name: \(user.userName)",
            andMessage: "Good Luck 😉!"
        )
    }
    @IBAction func passwordButton() {
        showAlert(
            withTitle: "Password: \(user.passvord)",
            andMessage: "Good Luck 😉!"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        self.userTextField.text = ""
        self.passwordTextField.text = ""
    }
    
    private func showAlert(
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


