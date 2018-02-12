//
//  SimpleFactoryModeVC.swift
//  Swift设计模式
//
//  Created by liyuelong on 2018/1/30.
//  Copyright © 2018年 lyl. All rights reserved.
//

import UIKit

class SimpleFactoryModeVC: UIViewController {

    fileprivate lazy var textfield : UITextField = {
        let textfield = UITextField(frame: CGRect(x: 100, y: 150, width: 100, height: 30))
        textfield.placeholder = "参数1"
        return textfield
    }()
    
    fileprivate lazy var textfield1 : UITextField = {
        let textfield1 = UITextField(frame: CGRect(x: 100, y: 230, width: 100, height: 30))
        textfield1.placeholder = "运算符"
        return textfield1
    }()
    
    fileprivate lazy var textfield2 : UITextField = {
        let textfield2 = UITextField(frame: CGRect(x: 100, y: 310, width: 100, height: 30))
        textfield2.placeholder = "参数2"
        return textfield2
    }()
    
    fileprivate lazy var sendButton : UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 390, width: 100, height: 50))
        button.setTitle("计算", for: .normal)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        button.backgroundColor = UIColor.brown
        return button
    }()
    
    fileprivate lazy var label : UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 480, width: 100, height: 50))
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension SimpleFactoryModeVC {
    func setupUI() -> Void {
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(textfield)
        self.view.addSubview(textfield1)
        self.view.addSubview(textfield2)
        self.view.addSubview(sendButton)
        self.view.addSubview(label)
    }
    
   @objc func buttonClicked() -> Void {
        var bo : BaseOperation? = nil
    
        if let text1 = textfield1.text {
            bo = SimFactory.factoryCreated(opera: text1)
        }else {
            errorTip()
        }
    
        if let text = textfield.text {
            bo?.numInt1 = Int(text)
        }else {
            errorTip()
        }
        if let text2 = textfield2.text {
            bo?.numInt2 = Int(text2)
        } else {
            errorTip()
        }
    
        let res : Int? = bo?.result()
        if let res = res {
            label.text = String(res)
        } else {
            errorTip()
        }
//        label.text = Operation.operatorResult(num1: textfield.text!, num2: textfield2.text!, opera: textfield1.text!)
    }
    
    func errorTip() -> Void {
        label.text = "参数有误"
    }
}


