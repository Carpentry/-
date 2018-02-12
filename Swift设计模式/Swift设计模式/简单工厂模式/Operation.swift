//
//  Operation.swift
//  Swift设计模式
//
//  Created by liyuelong on 2018/1/29.
//  Copyright © 2018年 lyl. All rights reserved.
//

import UIKit

class Operation: NSObject {
    static func operatorResult(num1:String,num2:String,opera:String) -> String {
        guard let num1 = Int(num1) else { return "参数有误"}
        guard let num2 = Int(num2) else { return "参数有误"}
        switch opera {
        case "+":
            return String(num1 + num2)
        case "-":
            return String(num1 - num2)
        case "*":
            return String(num1 * num2)
        case "/":
            if num2 == 0 {
                return "参数有误"
            }
            return String(num1 / num2)
        default:
            return "参数有误"
        }
    }
}
