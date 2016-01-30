//
//  ViewController.swift
//  swipes-and-shakes
//  A basic showing of how to work with simple gestures
//  Created by Gil Aguilar on 1/28/16.
//  Copyright © 2016 redeye-dev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    var sounds = ["coffeemug1", "coffeemug2", "coffeetable", "instantcoffee1", "instantcoffee2", "pouringcoffee", "teaspoon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.MotionShake {
            
            var randomNumber = Int(arc4random_uniform(UInt32(sounds.count)))
            
            
            var fileLocation = NSBundle.mainBundle().pathForResource(sounds[randomNumber], ofType: "mp3")
            
            do { try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation!))
            player.play()
                
            } catch {}
            
            
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

