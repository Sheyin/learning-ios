//
//  ViewController.swift
//  window-shopper
//
//  Created by Cheryl See on 5/7/18.
//  Copyright © 2018 AnS. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        // when clear button is pressed, hide the other labels, reset numbers
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // programmatically creating a UIButton and attaching it to the keyboard
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5452184447, blue: 0.2364891187, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        // setting this function as the accessory view
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        // This only runs if the fields are not nil (have something)
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            // This attempts to cast the values in doubles, if it fails, there is something like a letter etc = false
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                // dismiss the keyboard as it is no longer needed
                view.endEditing(true)
                // Show the labels when done
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }


}

