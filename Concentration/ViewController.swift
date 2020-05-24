//
//  ViewController.swift
//  Concentration
//
//  Created by Jamario Davis on 5/23/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCard = 0 {
        didSet {
            flipCardLabel.text = "Flips: \(flipCard)"
        }
    }

    @IBOutlet weak var flipCardLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃", "👻", "🎃", "👻"]

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
           flipCard(withEmoji: emojiChoices[cardNumber], on: sender) 
        } else {
            print("chosen card was not in cardButtons")
        }
    }
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

