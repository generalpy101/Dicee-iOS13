//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlets (internet builder outlet) are just referring to the UI element on the storyboard, while IBAction is a function tied to said element and updates the view accordingly
    // camelCase in Swift
    // Storyboard is xml type file, and this code name has some reference in that XML file. To check storyboard, click open as source. Use rename option from xcode to rename the item.
    // Little circle in left will highlight the original item in builder when hovered
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // Var vs let
//     https://stackoverflow.com/questions/24002092/what-is-the-difference-between-let-and-var-in-swift
    
    let availableDices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    // Kinda like main, app first shows up, basically when view loads up
    override func viewDidLoad() {
        super.viewDidLoad()
        // Simple dot based prop access
        // Who.What = value
        // Properties will usually have same name as that in builder ui attributes
        // #imageLiteral() brings a gui selector to select image directly. resourceName is the argument to be used to select image
        // Can also use UIImage(named: "resourceName")
        diceImageView1.image =  #imageLiteral(resourceName: "DiceSix")
    }
    
    // It is an IBAction. Sender is an ui button, triggers when an event happens. Most used event is Touch Up Inside for a button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Can also use arr.randomElement()
        diceImageView1.image = availableDices[Int.random(in: 0...5)]
        
        diceImageView2.image = availableDices[Int.random(in: 0...5)]
    }
    
}

