//
//  ProfileViewController.swift
//  LoginFlow
//
//  Created by Rustam Samiev on 10.06.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    private let segueIdentifier = "showFacts"
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userAboutLabel: UILabel!
    @IBOutlet var userPictureView: UIImageView!
    
    var userData: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        profileSettings()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier {
            guard let factsVC = segue.destination as? FactsViewController else { return }
            factsVC.userFacts = userData.person.facts
        }
    }
    
    @IBAction func factsButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: segueIdentifier, sender: nil)
    }
}

// MARK: - Profile Settings
private extension ProfileViewController {
    func profileSettings() {
        userPictureView.layer.cornerRadius = userPictureView.frame.width / 2
        userPictureView.image = UIImage(named: userData.person.avatar)
        userPictureView.contentMode = .scaleAspectFill
        userNameLabel.text = "Hi👋, my name is\n\(String(userData.person.fullName))"
        userNameLabel.textAlignment = NSTextAlignment.center
        userAboutLabel.text = String(userData.person.about)
        userAboutLabel.textAlignment = NSTextAlignment.center
    }
}
