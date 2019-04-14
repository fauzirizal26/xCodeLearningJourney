//
//  ViewController.swift
//  warCardGame
//
//  Created by Fauzi Rizal on 13/04/19.
//  Copyright © 2019 Apple Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    
    
    
    
    // the card
    @IBOutlet weak var playerAndButtonStack: UIStackView!
    @IBOutlet weak var cardOne: UIImageView!
    @IBOutlet weak var cardTwo: UIImageView!
    
    var picture = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card14"]
    
    var indexCardOne: Int = 0
    var indexCardTwo: Int = 0
    
    
    
    // button to randomize
    @IBOutlet weak var dealOutlet: UIButton!
    @IBAction func dealButton(_ sender: Any) {
        clickedButton()
    }
    
    var playerResult: Int = 0
    var cpuResult: Int = 0
    
    func clickedButton () {
        indexCardOne = Int.random(in: 0...(picture.count - 1))
        indexCardTwo = Int.random(in: 0...(picture.count - 1))
        
        cardOne.image = UIImage(named: picture[indexCardOne])
        cardTwo.image = UIImage(named: picture[indexCardTwo])
        
        if indexCardOne > indexCardTwo {
            playerResult += 1
            playerScore.text = "\(playerResult)"
        } else if indexCardTwo > indexCardOne {
            cpuResult += 1
            cpuScore.text = "\(cpuResult)"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerScore.text = ""
        cpuScore.text = ""
    }
    
    // player stats
    @IBOutlet weak var playerStatsStack: UIStackView!
    @IBOutlet weak var playerID: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    
    
    // CPU stats
    @IBOutlet weak var cpuStatsStack: UIStackView!
    @IBOutlet weak var cpuID: UILabel!
    @IBOutlet weak var cpuScore: UILabel!
    


}

