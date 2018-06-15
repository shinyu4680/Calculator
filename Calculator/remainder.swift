//
//  remainder.swift
//  Calculator
//
//  Created by kevin on 2018/6/15.
//  Copyright © 2018 KevinChang. All rights reserved.
//

import Foundation

// MARK: 多打的，其實沒用
func decimalPoint (rem: Double) -> String {
    var output = ""
    if rem != 0 {
        if rem.truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.0f", rem)
        }else if (rem * 10).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.1f", rem)
        }else if (rem * 100).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.2f", rem)
        }else if (rem * 1000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.3f", rem)
        }else if (rem * 10000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.4f", rem)
        }else if (rem * 100000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.5f", rem)
        }else if (rem * 1000000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.6f", rem)
        }else if (rem * 10000000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.7f", rem)
        }else if (rem * 100000000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.8f", rem)
        }else if (rem * -1).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.0f", rem)
        }else if (rem * -10).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.1f", rem)
        }else if (rem * -100).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.2f", rem)
        }else if (rem * -1000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.3f", rem)
        }else if (rem * -10000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.4f", rem)
        }else if (rem * -100000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.5f", rem)
        }else if (rem * -1000000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.6f", rem)
        }else if (rem * -10000000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.7f", rem)
        }else if (rem * -100000000).truncatingRemainder(dividingBy: 1.0) == 0.0{
            output =  String(format: "%.8f", rem)
        }else {
            output = String(format: "%.10f", rem)
        }
    }else {
        output = "0"
    }
    
    return output
}
