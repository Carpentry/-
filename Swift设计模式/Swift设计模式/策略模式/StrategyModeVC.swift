//
//  StrategyModeVC.swift
//  Swift设计模式
//
//  Created by liyuelong on 2018/1/30.
//  Copyright © 2018年 lyl. All rights reserved.
//

import UIKit

class StrategyModeVC: UIViewController {

    @IBOutlet weak var offPriceTextField: UITextField!
    @IBOutlet weak var finishPrice: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var numTextField: UITextField!
    @IBOutlet weak var perPriceTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SureButtonClicked(_ sender: UIButton) {
        var numDouble : Double? = nil
        var perPriceDouble : Double? = nil
        if let numtemp = numTextField.text {
            numDouble = Double(numtemp)
        }
        if let perTemp = perPriceTextField.text {
            perPriceDouble = Double(perTemp)
        }
        let totalDesc : String? = String(format: "单价:%.2lf,数量:%.2lf,合计:%.2lf", perPriceDouble!, numDouble!, perPriceDouble!*numDouble!)
        let tempFinish : String? = finishPrice.text
        let tempText : String? = totalPriceLabel.text
        totalPriceLabel.text =  tempText! + totalDesc!
        
        guard let tempfini = tempFinish else {
            return
        }
        if tempfini.isEmpty {
            return
        }
        let tempFinishDouble : Double? = Double(tempfini)

        
        finishPrice.text = String(tempFinishDouble! + perPriceDouble!*numDouble!)
    }
    
    @IBAction func resetButtonClicked(_ sender: UIButton) {
        totalPriceLabel.text = nil
        numTextField.text = nil
        perPriceTextField.text = nil
        finishPrice.text = nil
    }
}

extension StrategyModeVC {
    
}
