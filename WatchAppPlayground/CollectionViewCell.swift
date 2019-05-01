//
//  CollectionViewCell.swift
//  WatchAppPlayground
//
//  Created by 香川 卓哉 on 2019/05/01.
//  Copyright © 2019 Takuya Kagawa. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 8.8
    }
}
