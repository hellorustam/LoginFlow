//
//  FactsViewController.swift
//  LoginFlow
//
//  Created by Rustam Samiev on 23.07.2023.
//

import UIKit

final class FactsViewController: UIViewController {
    @IBOutlet var userFactsLabel: UILabel!
    
    var userFacts: User!
    
    override func viewDidLoad() {
        userFactsLabel.text = userFacts.person.facts
    }
}
