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
    
    var userName: String!
    var userAbout: String!
    var userAvatar: String!
    var userFacts: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        profileSettings()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier {
            guard let factsVC = segue.destination as? FactsViewController else { return }
            factsVC.userFacts = userFacts
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
        userPictureView.image = UIImage(named: userAvatar)
        userPictureView.contentMode = .scaleAspectFill
        userNameLabel.text = "Hi👋, my name is\n\(String(userName))"
        userNameLabel.textAlignment = NSTextAlignment.center
        userAboutLabel.text = String(userAbout)
        userAboutLabel.textAlignment = NSTextAlignment.center
    }
}
