//
//  ViewController.swift
//  RegistrationFlow
//
//  Created by Rustam Samiev on 08.06.2023.
//

import UIKit

final class LoginFlowViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }

    // MARK: - IBActions
    @IBAction func signInDidTapped() {
        logInUser()
    }
    
    @IBAction func forgotUserNameDidTapped() {
        showAlert(title: "Your User Name:", message: "Rustam", passwordClear: false)
    }
    
    @IBAction func forgotPasswordDidTapped() {
        showAlert(title: "Your Password:", message: "XOXO", passwordClear: false)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Sign In
extension LoginFlowViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let profileData = segue.destination as? LoginFlowViewController else { return }
        
    }
    
  private  func logInUser() {
        if userNameTextField.text == "Rustam" && passwordTextField.text == "XOXO" {
            print("got it")
        } else {
            showAlert(title: "⚠️ Something wrong", message: "Username or Password is not correct. Try again.", passwordClear: true)
        }
    }
}

// MARK: - UIAlertController
private extension LoginFlowViewController {
    func showAlert(title: String, message: String, passwordClear: Bool) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            if passwordClear == true {
                self.passwordTextField.text = ""
            }
        }

        alert.addAction(okAction)

        present(alert, animated: true)
    }
}

// MARK: - Hide keyboard by tap
extension LoginFlowViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
