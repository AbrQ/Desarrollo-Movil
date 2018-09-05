//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Abraham Quezada on 29/08/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import Foundation
import UIKit

class ConversionViewController: UIViewController{
    
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var valueTextField: UITextField!
    
    //Closure NumberFormatter
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    
    @IBAction func fahrenheitTextField(_ sender: UITextField) {

        
        if (sender.text?.isEmpty)!{
            celciusLabel.text = "????"
        }else{
            //celciusLabel.text = sender.text
            if let fahrenheitValue = Double(sender.text!){
                //celciusLabel.text = String(convertion(fahrenheitNumber: fahrenheitValue))
                //Using closure
                celciusLabel.text = numberFormatter.string(from: NSNumber(value: (convertion(fahrenheitNumber: fahrenheitValue))))
            }
        }
    }
    
    func convertion(fahrenheitNumber: Double) -> Double{
        let celcius = fahrenheitNumber - 32.0
        return celcius
    }
    
    @IBAction func dissmissKeyboard(_ sender: UITapGestureRecognizer) {
        valueTextField.resignFirstResponder()
    }
    
    
    
}
