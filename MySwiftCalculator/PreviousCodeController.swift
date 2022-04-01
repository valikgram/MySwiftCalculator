//
//  PreviousCodeController.swift
//  MySwiftCalculator
//
//  Created by Дмитрий Валькович on 17.10.21.
//


import UIKit
final class PreviousCodeController: UIViewController {

//    @IBOutlet weak var dotLabel: UIButton!
//    @IBOutlet weak var equallyLabel: UIButton!
//    @IBOutlet weak var oneLabel: UIButton!
//    @IBOutlet weak var twoLabel: UIButton!
//    @IBOutlet weak var threeLabel: UIButton!
//    @IBOutlet weak var plusLabel: UIButton!
//    @IBOutlet weak var fourLabel: UIButton!
//    @IBOutlet weak var fiveLabel: UIButton!
//    @IBOutlet weak var sixLabel: UIButton!
//    @IBOutlet weak var minusLabel: UIButton!
//    @IBOutlet weak var sevenLabel: UIButton!
//    @IBOutlet weak var eightLabel: UIButton!
//    @IBOutlet weak var nineLabel: UIButton!
//    @IBOutlet weak var multiLabel: UIButton!
//    @IBOutlet weak var clearLabel: UIButton!
//    @IBOutlet weak var plusMinusLabel: UIButton!
//    @IBOutlet weak var percentLabel: UIButton!
//    @IBOutlet weak var divLabel: UIButton!
//
//


//
//    var cleanZero = true
//
//    func AddNumberToLabel(number: String) {
//        var textNumber = String(resultLabel.text!)
//        if cleanZero {
//            textNumber = ""
//            cleanZero = false
//        }
//
//        textNumber = textNumber + number
//        resultLabel.text = textNumber
//
//    }
//
//
//// MARK: Тут можно было сделать один Action на все цифры и передавать title кнопки, но этот проект делался на 4-м занятии курсов, так что на тот момент делал как умел :)
//
//    @IBAction func oneBut (_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "1")
//        }
//    }
//
//    @IBAction func twoBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "2")
//        }
//    }
//
//    @IBAction func threeBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "3")
//        }
//    }
//
//    @IBAction func fourBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "4")
//        }
//    }
//
//    @IBAction func fiveBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "5")
//        }
//    }
//
//    @IBAction func sixBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "6")
//        }
//    }
//
//    @IBAction func sevenBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "7")
//        }
//    }
//
//    @IBAction func eightBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "8")
//        }
//    }
//
//    @IBAction func nineBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//
//            AddNumberToLabel(number: "9")
//        }
//    }
//
//    @IBAction func zeroBut(_ sender: Any) {
//        if resultLabel.text!.count < 9 {
//            AddNumberToLabel(number: "0")
//        }
//    }
//
//    @IBAction func dotBut(_ sender: Any) {
//        AddNumberToLabel(number: ".")
//    }
//
//
//    var mulButton = "+"
//    var firstNum:Double?
//
//    @IBAction func multiBut(_ sender: Any) {
//        mulButton = "*"
//        firstNum = Double(resultLabel.text!)
//        cleanZero = true
//    }
//
//    @IBAction func equalButton(_ sender: Any) {
//
//
//        let secondNum = Double(resultLabel.text!)
//        var result:Double?
//        switch mulButton {
//        case "*":
//            result = firstNum! * secondNum!
//        case "/":
//            result = firstNum! / secondNum!
//        case "-":
//            result = firstNum! - secondNum!
//        case "+":
//            result = firstNum! + secondNum!
//        default:
//            result = 0.0
//        }
//        resultLabel.text = String(result!)
//        cleanZero = true
//    }
//
//    @IBAction func subButton(_ sender: Any) {
//        mulButton = "-"
//        firstNum = Double(resultLabel.text!)
//        cleanZero = true
//    }
//
//    @IBAction func divisionButton(_ sender: Any) {
//        mulButton = "/"
//        firstNum = Double(resultLabel.text!)
//        cleanZero = true
//    }
//
//    @IBAction func plusButton(_ sender: Any) {
//        mulButton = "+"
//        firstNum = Double(resultLabel.text!)
//        cleanZero = true
//    }
//
//
//    @IBAction func acButton(_ sender: Any) {
//        resultLabel.text = "0"
//        cleanZero = true
//    }
//
//    @IBAction func minusPlusButton(_ sender: Any) {
//
//        var textNumber = String(resultLabel.text!)
//        textNumber = "-" +  textNumber
//        resultLabel.text = textNumber
//    }
//
//
//    @IBAction func buttonPercent(_ sender: Any) {
//        var firstNum = Double(resultLabel.text!)
//        firstNum = firstNum!/100.0
//
//        resultLabel.text = String(firstNum!)
//
}
