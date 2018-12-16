//
//  ViewController.swift
//  04_Piano
//
//  Created by Jair Benítez on 15/12/18.
//  Copyright © 2018 Jair Benítez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer!
    
    let soundArray = ["c1", "c1s", "d1", "d1s", "e1", "f1", "f1s", "g1", "g1s", "a1", "a1s", "b1", "c2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playSound(_ sender: UIButton) {
        
        let idKey = sender.tag
        let filename = soundArray[idKey]
        print( "Tecla \( filename )")
        
        if let soundURL : URL = Bundle.main.url(forResource: filename, withExtension: "mp3") {
            print( soundURL)
        }
        
        
    }
    
    
}

