//
//  ViewController.swift
//  WatchAppPlayground
//
//  Created by 香川 卓哉 on 2019/05/02.
//  Copyright © 2019 Takuya Kagawa. All rights reserved.
//

import Foundation
import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    // ラベル
    @IBOutlet weak var viewLabel: UILabel!
    
    // 名前ラベル
    @IBOutlet weak var nameLabel: UILabel!
    
    // 受け取ったラベル文字列
    var receiveLabel: String = ""
    
    // 受け取ったindex
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ラベルへ文字列を渡す
        viewLabel.text = receiveLabel
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // DBを生成
        let db = Firestore.firestore()
        
        db.collection("sample").getDocuments() { snapshot, error in
            
            if error != nil {
                // エラー処理
                print("エラー発生")
                return
            }
            
            // Arrayに含まれているかチェック
            guard self.index < snapshot?.documents.count ?? 0, let document = snapshot?.documents[self.index] else {
                // データがないときの処理
                print("データがないよ")
                return
            }
            
            print(document.data())
            
            // データをラベルにセット
            let data = document.data()
            self.nameLabel.text = data["name"] as? String
        }
    }
}
