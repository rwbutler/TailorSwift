//
//  ViewController.swift
//  TailorSwift
//
//  Created by Ross Butler on 04/06/2017.
//  Copyright (c) 2017 Ross Butler. All rights reserved.
//

import UIKit
import TailorSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Example of using UIColor extension to select a shade of a color
        self.view.backgroundColor = UIColor.blue.shade(.darkest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

