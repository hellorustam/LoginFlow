//
//  StoryViewController.swift
//  LoginFlow
//
//  Created by Rustam Samiev on 23.07.2023.
//

import UIKit

final class StoryViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    
    var userStory: User!
    
    override func viewDidLoad() {
        storyLabel.text = userStory.coolStory
    }
}
