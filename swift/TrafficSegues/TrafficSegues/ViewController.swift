//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Abraham Quezada on 10/07/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        guard segueSwitch.isOn else{
            return print("Switch isn't enabled")
        }
        performSegue(withIdentifier: "Yellow", sender: nil)
    }
    
    @IBAction func grayButtonTapped(_ sender: Any) {
        guard segueSwitch.isOn else{
            return print("Switch isn't enabled")
        }
        performSegue(withIdentifier: "Gray", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

