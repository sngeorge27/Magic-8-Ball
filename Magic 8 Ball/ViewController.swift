//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sarah George on 7/16/19.
//  Copyright © 2019 Sarah George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imagesArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    var randomBallImage: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallImage = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: imagesArray[randomBallImage])
    }
    
}

