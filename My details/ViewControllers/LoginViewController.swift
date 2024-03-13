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
    
    private let userName = "User"
    private let password = "qwerty"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Proba")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.welcome = userName
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
        guard userTextField.text == userName
                && passwordTextField.text == password else {
            showAlert(
                withTitle: "Invalid Login or Password",
                andMessage: "Please enter correct your data") {
                    self.passwordTextField.text = ""
                }
            return
        }
    }
    
    @IBAction func userNameButton() {
        showAlert(
            withTitle: "User Name: \(userName)",
            andMessage: "Good Luck 😉!"
        )
    }
    @IBAction func passwordButton() {
        showAlert(
            withTitle: "Password: \(password)",
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



