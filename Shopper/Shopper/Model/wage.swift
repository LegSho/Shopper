//
//  wage.swift
//  Shopper
//
//  Created by Igor Tabacki on 11/23/17.
//  Copyright © 2017 Igor Tabacki. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
