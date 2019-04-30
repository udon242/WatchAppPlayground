//
//  ViewController.swift
//  WatchAppPlayground
//
//  Created by 香川 卓哉 on 2019/04/30.
//  Copyright © 2019 Takuya Kagawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldValue: UITextField!
    
    @IBAction func onClickButton(_ sender: Any) {
        self.textFieldValue.text = "Hello"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
