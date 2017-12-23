//
//  ViewController.swift
//  War
//
//  Created by Brandon Lapomeray on 1/10/17.
//  Copyright © 2017 Grouplr Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Card Images
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    // Score
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    //Array of card assetnames
    let cardNames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10"
        ,"jack", "queen", "king","ace"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
       // Randomize the card, and converts the value into an interger
        let leftCard = Int(arc4random_uniform(13))
        let rightCard = Int(arc4random_uniform(13))
        
        // Set the the images
        leftImageView.image = UIImage(named: cardNames[leftCard])
        rightImageView.image = UIImage(named: cardNames[rightCard])
        
        
        // If left card wins
        if (leftCard > rightCard) {
            
            leftScore += 1
            
            // Update the label, converts number into string datetype, becase score is an interger type and the text properties only accept datatype String
            leftScoreLabel.text = String(leftScore)
            


        // If right card wins
        } else if( rightCard > leftCard){
            
            rightScore += 1
        
            // Update the label, converts number into string datetype, becase score is an interger type and the text properties only accept datatype String
            
            rightScoreLabel.text = String(rightScore)
            

        // If theres a tie
        } else {
        
            


        }

    
    
    }
    
    


}

