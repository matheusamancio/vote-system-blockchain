//
//  BaseCollectionViewCell.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 23/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    
    // MARK: Initializing
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func initialize() {
        // Override point
    }
    
}

