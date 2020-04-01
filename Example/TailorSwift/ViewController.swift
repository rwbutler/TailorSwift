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

    // MARK: Outlets
    @IBOutlet weak var debouncedButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!

    // MARK: View life cycle
    override func viewDidLoad() {

        // Example of trimming attributed text
        let price: Double = 2.111111
        let priceFormatter = PriceFormatter()
        if let formattedPrice = priceFormatter.string(from: price) {
            print(formattedPrice)
        }
        let originalString = "          \n       TailorSwift          \n\n\n           "
        let trimmedString = originalString.trimmingCharacters(in: .whitespacesAndNewlines)
        titleLabel.attributedText = NSAttributedString(string: trimmedString)

        // Example of using UIColor extension to select a shade of a color
        self.view.backgroundColor = UIColor.blue.shade(.darkest)
    }

    @IBAction func buttonTapped(_ button: UIButton) {
        debouncedButton.debounce()
        print("Button tapped!")
    }

}
