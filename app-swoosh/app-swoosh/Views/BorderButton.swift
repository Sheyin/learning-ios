//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Cheryl See on 5/6/18.
//  Copyright © 2018 AnS. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        // border width / color is not available in the ui editor so it has to be done programmatically
        // can command-click layer to see what options are available
    }
    // every UIView has a layer property
}
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
