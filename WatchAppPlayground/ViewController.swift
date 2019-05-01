//
//  ViewController.swift
//  WatchAppPlayground
//
//  Created by 香川 卓哉 on 2019/04/30.
//  Copyright © 2019 Takuya Kagawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // テキストフィールド
    @IBOutlet weak var textFieldValue: UITextField!
    
    // ボタンをクリックした際のアクション
    @IBAction func onClickButton(_ sender: Any) {
        self.textFieldValue.text = "Hello"
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .red
        
        return cell
    }
}
