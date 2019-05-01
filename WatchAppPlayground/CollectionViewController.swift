//
//  ViewController.swift
//  WatchAppPlayground
//
//  Created by 香川 卓哉 on 2019/04/30.
//  Copyright © 2019 Takuya Kagawa. All rights reserved.
//

import UIKit

let data = ["data1", "data2", "data3", "data4", "data5"]

class CollectionViewController: UIViewController, UICollectionViewDelegate {
    // テキストフィールド
    @IBOutlet weak var textFieldValue: UITextField!
    
    // 遷移先のラベルに渡す文字列
    var giveViewLabel: String = "ラベル初期値"
    
    // ボタンをクリックした際のアクション
    @IBAction func onClickButton(_ sender: Any) {
        self.textFieldValue.text = "Hello"
    }
    
    // コレクションビュー
    @IBOutlet weak var collectionView: UICollectionView!
    
    // セルがクリックされた際の処理
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(String(indexPath.item + 1) + "番のセルがクリックされたよ")
        
        // 遷移先へ渡す文字列を設定
        giveViewLabel = data[indexPath.item]
        
        // ページ遷移
        performSegue(withIdentifier: "ViewSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dataSourceとdelegateを登録する
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先のLabelへ文字列を渡す
        if (segue.identifier == "ViewSegue") {
            let vc = segue.destination as! ViewController
            vc.receiveLabel = giveViewLabel
        }
    }
}

extension CollectionViewController: UICollectionViewDataSource {
    
    // セルの個数を設定
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count;
    }
    
    // セルの設定
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // セルの取得
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        // 背景色を設定
        cell.backgroundColor = UIColor.cyan
        // ラベルテキストを設定
        cell.label.text = data[indexPath.item]
        
        return cell
    }
}
