//
//  ViewController.swift
//  LazyIntilization
//
//  Created by Hongfei Zhai on 2018/4/23.
//  Copyright © 2018年 yuanding. All rights reserved.
//

import UIKit

class NormalViewController: UIViewController {
    let myView = MyView()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("init")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NormalViewController viewDidLoad")
        myView.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        view.addSubview(myView)
    }
    
}


class LazyViewController: UIViewController {
    lazy var myView:MyView = MyView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("lazyViewcontroller viewDidLoad")
        myView.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        view.addSubview(myView)
    }
}


class MyView: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.red
        print("MyView init")
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
