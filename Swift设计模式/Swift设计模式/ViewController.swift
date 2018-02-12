//
//  ViewController.swift
//  Swift设计模式
//
//  Created by liyuelong on 2017/12/4.
//  Copyright © 2017年 lyl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    fileprivate lazy var dataArray : [Dictionary] = [Dictionary<String,String>]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addData()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseId)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController {
    fileprivate func addData() -> Void {
        /**
         设计模式
         1、简单工厂模式
         2、策略模式
         3、装饰模式
         4、代理模式
         5、工厂方法模式
         6、原型模式
         7、模板方法模式
         8、外观模式
         9、建造者模式
         10、观察者模式
         11、抽象工厂模式
         12、状态模式
         13、适配器模式
         14、备忘录模式
         15、组合模式
         16、迭代器模式
         17、单例模式
         18、桥接模式
         19、命令模式
         20、职责链模式
         21、中介者模式
         22、亨元模式
         23、解释器模式
         24、访问者模式
         */
        
        //迪米特法则
        
        //单一职责原则
        //开放封闭原则
        //依赖倒转原则
        let dic1 : Dictionary<String, String> = ["name":"简单工厂模式" ,"demoClass":"SimpleFactoryModeVC" ]
        var dic2 : Dictionary<String, String>
        dic2 = ["name":"策略模式","demoClass":"StrategyModeVC"]
        dataArray.append(dic1)
        dataArray.append(dic2)
        
    }
}
private let cellReuseId : String = "cellReuseId"

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId)
        let dict = dataArray[indexPath.row]
        cell?.textLabel?.text = dict["name"]
        return cell!
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dict = dataArray[indexPath.row]
        guard let classStrName = dict["demoClass"] else { return }
        let pName = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        let className  = NSClassFromString(pName+"." + classStrName) as! UIViewController.Type
        let vc = className.init()
        navigationController?.pushViewController(vc, animated: true)
    }
}

