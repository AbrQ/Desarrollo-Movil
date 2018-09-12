//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Abraham Quezada on 02/07/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func gestureTapped(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button was tapped!")
        if toggle.isOn{
            print("The switch is ON")
        }
        if !toggle.isOn{
            print("The switch is OFF")
        }
        print(slider.value)
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn{
            print("Switch is on")
        }
        if !sender.isOn{
            print("Switch is off")
        }
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func textTapped(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

