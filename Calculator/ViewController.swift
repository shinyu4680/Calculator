//
//  ViewController.swift
//  Calculator
//
//  Created by kevin on 2018/6/12.
//  Copyright © 2018 KevinChang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var barView: UIView!
    
    var totalNum:Double?
    var firstNum:Double?
    var nextNum:Double?
    var stillTyping = false
    var operation:String?
    var input: Double{
        get{
            return Double(resultLabel.text!)!
        }
        set{
            resultLabel.text = "\(decimalPoint(rem: newValue))"
            stillTyping = false
        }
    }
    var equalityPressed = false
    
    
    //MARK: number btn pressed
    @IBAction func numBtnPressed(_ sender: UIButton) {
        let number = sender.currentTitle!
        
        if stillTyping {
            if resultLabel.text!.count < 12 {
                resultLabel.text = resultLabel.text! + number
            }
            
        } else {
            if number != "0"{
                resultLabel.text = number
                stillTyping = true
            } else {
                resultLabel.text = "0"
                stillTyping = false
            }
        }
    }
    
    // MARK: operation calculate
    func operationEx (num1: Double, num2: Double) -> Double {
        switch operation {
        case "+":
            totalNum = num1 + num2
        case "-":
            totalNum = num1 - num2
        case "x":
            totalNum = num1 * num2
        case "/":
            totalNum = num1 / num2
        default:
            break
        }
        return totalNum!
    }
    
    
    // MARK: operation btn pressed
    @IBAction func operationBtnPressed(_ sender: UIButton) {
        var result:Double = 0
        if !equalityPressed {
            if operation == nil{
                operation = sender.currentTitle!
                firstNum = input
                stillTyping = false
            }else {
                nextNum = input
                result = operationEx(num1: firstNum ?? 0, num2: nextNum ?? 0)
                input = result
                operation = sender.currentTitle!
                stillTyping = false
                firstNum = input
            }
        }else {
            operation = sender.currentTitle!
            firstNum = input
            stillTyping = false
            equalityPressed = false
        }
        
    }
    
    // MARK: equality btn pressed
    @IBAction func equalityPressed(_ sender: UIButton) {
        stillTyping = false
        var result:Double = 0
        if !equalityPressed {
            nextNum = input
            result = operationEx(num1: firstNum ?? 0, num2: nextNum ?? 0)
            input = result
            equalityPressed = true
        } else {
            firstNum = input
            result = operationEx(num1: firstNum ?? 0, num2: nextNum ?? 0)
            input = result
        }
        
    }
    
    
    // MARK: ac btn pressed, reset
    @IBAction func acBtnPressed(_ sender: UIButton) {
        input = 0
        totalNum = nil
        firstNum = nil
        nextNum = nil
        operation = nil
        equalityPressed = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Group")!)
        self.barView.backgroundColor = UIColor(patternImage: UIImage(named: "bar")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

