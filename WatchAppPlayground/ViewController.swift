//
//  ViewController.swift
//  WatchAppPlayground
//
//  Created by 香川 卓哉 on 2019/05/02.
//  Copyright © 2019 Takuya Kagawa. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    // ラベル
    @IBOutlet weak var viewLabel: UILabel!
    
    // 受け取ったラベル文字列
    var receiveLabel: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ラベルへ文字列を渡す
        viewLabel.text = receiveLabel
    }
}
