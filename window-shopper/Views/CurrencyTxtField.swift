//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Cheryl See on 5/7/18.
//  Copyright © 2018 AnS. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    // This function + @IBDesignable let you preview changes in interface builder instead of having to build and see at runtime
    // Everything you want to see happen in interface builder has to be in prepareForInterfaceBuilder (or function it calls)
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    // doing this in awakeFromNib() so that it is called immediately
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }
        
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2465753425)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        // won't run this block of code if placeholder is nil
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
        
        
    }
}
