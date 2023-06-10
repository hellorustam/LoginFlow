//
//  ProfileViewController.swift
//  LoginFlow
//
//  Created by Rustam Samiev on 10.06.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
    }

}
