//
//  ViewController.swift
//  autolayout-prac
//
//  Created by inae Lee on 2020/12/31.
//

import UIKit

class KeyboardVC: UIViewController {
    @IBOutlet var customTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let loadXib = Bundle.main.loadNibNamed("CustomKeyboard", owner: self, options: nil)
        if let keyboard = loadXib?.first as? CustomKeyboard {
            keyboard.delegate = self
            customTextField.inputView = keyboard
        }
    }
}

extension KeyboardVC: CustomkeyboardDelegate {
    func pressNumberButton(str: String) {
        var newValue: String = str
        let numberFormatter = NumberFormatter()

        if let existingValue = customTextField.text {
            let num = existingValue.components(separatedBy: [","]).joined()
            newValue = num + str

            if str == "00" || str == "000" {
                if let intNum = Int(num) {
                    newValue = String(intNum * Int("1" + str)!)
                }
            }
        }

        numberFormatter.numberStyle = .decimal

        customTextField.text = .init()
        customTextField.text! += numberFormatter.string(for: Int(newValue))!
    }
}
