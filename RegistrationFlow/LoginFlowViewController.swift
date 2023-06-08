//
//  ViewController.swift
//  RegistrationFlow
//
//  Created by Rustam Samiev on 08.06.2023.
//

import UIKit

final class LoginFlowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "Your User Name:", message: "Rustam")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Your Password:", message: "XOXO")
    }
}

// MARK: - UIAlertController
private extension LoginFlowViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .actionSheet
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
//            self.textField.text = ""
        }
        
        alert.addAction(okAction)

        present(alert, animated: true)  // отображение экрана
    }
}
