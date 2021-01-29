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
        print("---\(str)")
    }
}
