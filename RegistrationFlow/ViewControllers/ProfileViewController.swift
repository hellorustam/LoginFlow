//
//  ProfileViewController.swift
//  LoginFlow
//
//  Created by Rustam Samiev on 10.06.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userAboutLabel: UILabel!
    @IBOutlet var userPictureView: UIImageView!
    
    var userName: String!
    var userAbout: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        profileSettings()
    }
}

// MARK: - Profile Settings
private extension ProfileViewController {
    func profileSettings() {
        userPictureView.layer.cornerRadius = userPictureView.frame.width / 2
        userPictureView.image = UIImage(named: "myProfilePicture")
        userPictureView.contentMode = .scaleAspectFill
        userNameLabel.text = "Welcome \(String(userName))"
        userAboutLabel.textAlignment = NSTextAlignment.center
        userAboutLabel.text = String(userAbout)
    }
}
