//
//  ViewController.swift
//  MySwiftCalculator
//
//  Created by Дмитрий Валькович on 17.10.21.
//

import UIKit
final class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    private var cleanZero = false
    private var firstOperand: Double = 0
    private var secondOperand: Double = 0
    private var calculate: String = ""
    private var dot = false
    private var inputNumber: Double {
        get {
            return Double(resultLabel.text!)!
        }
        set {
            let value = "\(newValue)"
            let valueArray = value.components(separatedBy: ".")
            if valueArray[1] == "0" {
                resultLabel.text = "\(valueArray[0])"
            }else {
                resultLabel.text = "\(newValue)"
            }
            cleanZero = false
        }
    }
    func calulateOperands(operation: (Double, Double) -> Double) {
        inputNumber = operation(firstOperand, secondOperand)
        cleanZero = false
    }
    @IBAction func numPressed(_ sender: UIButton) {
        let number = sender.currentTitle!
        if cleanZero {
            if resultLabel.text!.count < 9 {
                resultLabel.text = resultLabel.text! + number
            }
        } else {
            resultLabel.text = number
            cleanZero = true
        }
    }
    @IBAction func operationsButton(_ sender: UIButton) {
        calculate = sender.currentTitle!
        firstOperand = inputNumber
        cleanZero = false
        dot = false
    }
    @IBAction func clearInput(_ sender: UIButton) {
        firstOperand = 0
        secondOperand = 0
        inputNumber = 0
        resultLabel.text = "0"
        cleanZero = false
        calculate = ""
        dot = false
    }
    @IBAction func plusMinusButton(_ sender: UIButton) {
        inputNumber = -inputNumber
    }
    @IBAction func percentButton(_ sender: UIButton) {
        if firstOperand == 0 {
            inputNumber = inputNumber / 100
        } else {
            secondOperand = firstOperand * inputNumber / 100
        }
    }
    @IBAction func dotButton(_ sender: Any) {
        if cleanZero && !dot {
            resultLabel.text = resultLabel.text! + "."
            dot = true
        } else if !cleanZero && !dot {
            resultLabel.text = "0."
        }
        
    }
    @IBAction func equalButton(_ sender: UIButton) {
        
        if cleanZero {
            secondOperand = inputNumber
        }
        dot = false
        switch calculate {
        case "+":
            calulateOperands{$0 + $1}
        case "−":
            calulateOperands{$0 - $1}
        case "×":
            calulateOperands{$0 * $1}
        case "÷":
            calulateOperands{$0 / $1}
        default: break
        }
    }
}


