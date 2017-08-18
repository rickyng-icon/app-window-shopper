//
//  File.swift
//  window-shopper
//
//  Created by Ng Ricky on 17/8/2017.
//  Copyright © 2017 ICON. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
