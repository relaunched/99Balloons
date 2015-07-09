//
//  ViewController.swift
//  99Balloons
//
//  Created by Hurewitz, Matthew on 7/8/15.
//  Copyright (c) 2015 Hurewitz, Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    var myBalloons:[RedBalloon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBalloons()
        
       

//         Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButton(sender: UIBarButtonItem) {
////        
        var randomIndex = Int(arc4random_uniform(UInt32(100)))
//        println("\(myBalloons[randomIndex].image)")
        self.myImageView.image = myBalloons[randomIndex].image
        self.balloonLabel.text = "Red Balloon Number: \(myBalloons[randomIndex].number)"
        
    }
    
    func createBalloons() {
        
        for var i = 1; i < 100; i++ {
            var newBalloon = RedBalloon()
            var randomIndex = Int(arc4random_uniform(UInt32(4)))
            
            newBalloon.number = i
            
            println("\(randomIndex)")
            switch randomIndex {
            case 1:
                newBalloon.image = UIImage(named: "RedBalloon1.jpg")
            case 2:
                newBalloon.image = UIImage(named: "RedBalloon2.jpg")
            case 3:
                newBalloon.image = UIImage(named: "RedBalloon3.jpg")
            default:
                newBalloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            
//            println("\(newBalloon.image) \(newBalloon.number)")
            
            myBalloons.append(newBalloon)
        }

        
    }
    
    
            
}

        
        
