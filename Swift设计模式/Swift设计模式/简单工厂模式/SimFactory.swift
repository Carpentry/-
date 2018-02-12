//
//  SimFactory.swift
//  Swift设计模式
//
//  Created by liyuelong on 2018/2/2.
//  Copyright © 2018年 lyl. All rights reserved.
//

import UIKit

class SimFactory: NSObject {
    static func factoryCreated(opera : String) -> BaseOperation?{
        switch opera {
        case "+":
            return PlusOper()
        case "-":
            return SubOper()
        case "*":
            return MulOper()
        case "/":
            return DivOper()
        default:
            return nil
        }
    }
}
