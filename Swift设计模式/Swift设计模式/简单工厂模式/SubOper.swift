//
//  SubOper.swift
//  Swift设计模式
//
//  Created by liyuelong on 2018/2/2.
//  Copyright © 2018年 lyl. All rights reserved.
//

import UIKit

class SubOper: BaseOperation {
    override func result() -> Int?  {
        guard let numInt1 = numInt1 else {
            return nil
        }
        guard let numInt2 = numInt2 else {
            return nil
        }
        return numInt1 - numInt2
    }
}
