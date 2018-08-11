//
//  ViewController.swift
//  Calculator
//
//  Created by ROB on 2018-08-10.
//  Copyright © 2018 ROB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {  //swift is single inheritance class viewcontroller from UIView Controller, Instances, variable in Swift are called Properties, Functions are Methods

    @IBOutlet weak var display: UILabel?
    //things with ? are optional and get treated as nil by default in Swift while in the case of any properties they must be initiatilized first init
    var userIsInTheMiddleOfTyping  = false
    
    
    @IBAction func touchDigit(_ sender: UIButton) { //type must not be set to Any as it will designate sender as any type instead we would want that to be value
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping{
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
        }
        else{
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
        //print("\(digit) was touched")
  }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle{
            switch mathematicalSymbol{
            case "pi":
                display!.text = String(Double.pi)
            case "sqrt":
                let x = Double(display!.text!)!
                display!.text = String(sqrt(x))
            default:
                break
                
            }
        }
    }
    
    
}

