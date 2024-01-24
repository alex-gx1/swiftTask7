//
//  ViewController.swift
//  task_7
//
//  Created by Алексей Кононенко on 23.01.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    @IBOutlet private weak var costumizeButton: UIButton!{
        didSet{
            costumizeButton.layer.cornerRadius = costumizeButton.bounds.height / 2
            costumizeButton.layer.borderWidth = 3.0
            costumizeButton.layer.borderColor = (UIColor(red: 242.0/255.0, green: 116.0/255.0, blue: 119.0/255.0, alpha: 1.0)).cgColor
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

