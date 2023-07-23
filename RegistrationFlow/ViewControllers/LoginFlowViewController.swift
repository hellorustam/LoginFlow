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
    
    private let userData = User.getUser()
    
    // MARK: - IBActions
    @IBAction func signInDidTapped() {
        logInUser()
    }
    
    @IBAction func forgotDidTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Your User Name:", message: userData.login, passwordClear: false)
        : showAlert(title: "Your Password:", message: userData.password, passwordClear: false)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Sign In
extension LoginFlowViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let navigationVC = viewController as? UINavigationController {
                guard let profileData = navigationVC.topViewController as? ProfileViewController else { return }
                profileData.userName = userData.person.fullName
                profileData.userAbout = userData.person.about
                profileData.userAvatar = userData.person.avatar
            }
        }
        
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let profileData = navigationVC.viewControllers.first as? FactsViewController else { return }
        profileData.userFacts = userData
    }
    
    private func logInUser() {
        if userNameTextField.text == userData.login && passwordTextField.text == userData.password {
            performSegue(withIdentifier: "showProfileVC", sender: nil)
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
            if passwordClear {
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
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
