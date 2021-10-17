//
//  ViewController.swift
//  Calculator
//
//  Created by Дмитрий Валькович on 17.10.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zeroButton: RoundButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        zeroButton.layer.cornerRadius = 40
    }
    
    
    
}

@IBDesignable class RoundButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }

    override func prepareForInterfaceBuilder() {
        sharedInit()
    }

    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }

    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }

    var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }

}
