//
//  AimsViewController.swift
//  LoginFlow
//
//  Created by Rustam Samiev on 23.07.2023.
//

import UIKit

final class AimsViewController: UIViewController {
    @IBOutlet var aimsLabel: UILabel!
    
    var userAims: String!
    
    override func viewDidLoad() {
        aimsLabel.text = String(userAims)
    }
}
