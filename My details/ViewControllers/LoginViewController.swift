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
    
    private let userName = "Mit"
    private let password = "qwerty"
    
    
    @IBAction func logInButton() {
        guard let imputText = userTextField.text, !imputText.isEmpty else {
            showAlert(withTitle: "Text field is empty", andMessage: "Please enter your name")
            return
        } 
        
        guard userTextField.text == userName && passwordTextField.text == password else {
            showAlert(withTitle: "Wrong format", andMessage: "Please enter your name")
            return
        }
        
//        let userNamePattern = "^[a-zA-Z ]{3-20}$"
//        let isUsernameValid = NSPredicate(format: "SELF MATCHES %@", userNamePattern)
//            .evaluate(with: imputText)
//        if !isUsernameValid {
//            showAlert(withTitle: "Wrong format", andMessage: "Please enter your name")
//            return
//       }
        
    }
    
    @IBAction func userNameButton() {
        showAlert(withTitle: "Mit", andMessage: "Good Luck!")
    }
    @IBAction func passwordButton() {
        showAlert(withTitle: "qwerty", andMessage: "Good Luck!")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.welcome = "Welcome, \(userTextField.text ?? "")!"
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
        self.userTextField.text = ""
        self.passwordTextField.text = ""
        
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let allert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            
        }
        allert.addAction(okAction)
        present(allert, animated: true)
    }
}

