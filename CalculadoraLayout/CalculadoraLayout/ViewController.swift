//
//  ViewController.swift
//  CalculadoraLayout
//
//  Created by Abraham Quezada on 20/08/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var typeButton: UIButton!
    @IBOutlet weak var operatorOne: UILabel!
    @IBOutlet weak var symbol: UILabel!
    @IBOutlet weak var operatorTwo: UILabel!
    
    var operatorOneString: String = "Operation: "
    var symbolString: String = "Operator: "
    var operatorTwoString: String = "Result: "
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        operatorOneString += sender.currentTitle!
        operatorOne.text = operatorOneString
        
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        operatorOneString = ""
        symbolString = ""
        operatorTwoString = ""
        operatorOne.text = operatorOneString
        symbol.text = symbolString
        operatorTwo.text = operatorTwoString
    }
}

