//
//  Wage.swift
//  window-shopper
//
//  Created by Cheryl See on 5/17/18.
//  Copyright © 2018 AnS. All rights reserved.
//

import Foundation
class Wage {
    // Take the price of item and divide by the wage
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
