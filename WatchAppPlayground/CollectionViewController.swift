//
//  CollectionView.swift
//  WatchAppPlayground
//
//  Created by 香川 卓哉 on 2019/05/01.
//  Copyright © 2019 Takuya Kagawa. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // CollectionViewCellというクラスのセルを取得
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.label.text = "UICollectionViewControllerから設定"
        
        return cell
    }
}
