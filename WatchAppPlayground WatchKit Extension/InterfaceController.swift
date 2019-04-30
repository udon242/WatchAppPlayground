//
//  InterfaceController.swift
//  WatchAppPlayground WatchKit Extension
//
//  Created by 香川 卓哉 on 2019/04/30.
//  Copyright © 2019 Takuya Kagawa. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var countLabel:WKInterfaceLabel!
    
    var count:Int32 = 0 {
        didSet {
            self.countLabel.setText(String(self.count))
        }
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        self.count = 100
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
