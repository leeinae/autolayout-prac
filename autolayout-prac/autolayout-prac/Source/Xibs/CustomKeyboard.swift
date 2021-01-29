//
//  CustomKeyboard.swift
//  autolayout-prac
//
//  Created by inae Lee on 2021/01/26.
//

import UIKit

protocol CustomkeyboardDelegate {
    func pressNumberButton(str: String)
}

class CustomKeyboard: UIView {
    // MARK: - Custom Variables

    var delegate: CustomkeyboardDelegate?

    // MARK: - Custom Methods

    @IBAction func touchUpButton(_ sender: UIButton) {
        if let pressNumber = sender.titleLabel?.text {
            delegate?.pressNumberButton(str: pressNumber)
        }
    }
}
