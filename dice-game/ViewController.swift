//
//  ViewController.swift
//  dice-game
//
//  Created by Paul Dudsdeemaytha on 2019-09-18.
//  Copyright © 2019 Paul Dudsdeemaytha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceOnLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceOnLoad()
    }
    
    func updateDiceOnLoad() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1] )
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceOnLoad()
    }
}

