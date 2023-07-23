//
//  StoryViewController.swift
//  LoginFlow
//
//  Created by Rustam Samiev on 23.07.2023.
//

import UIKit

final class StoryViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    
    var userStory: String!
    
    override func viewDidLoad() {
        storyLabel.text = String(userStory)
    }
}
