//
//  ViewController.swift
//  MusicWireframe
//
//  Created by Abraham Quezada on 08/08/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var albumView: UIImageView!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var constraints: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playButtonTapped(_ sender: Any) {
        constraints.constant = 0.0
        UIView.animate(withDuration: 2.0){
           // self.albumView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            //self.albumView.transform = CGAffineTransform.identity
            self.view.layoutIfNeeded()
        }
    }
    

}

