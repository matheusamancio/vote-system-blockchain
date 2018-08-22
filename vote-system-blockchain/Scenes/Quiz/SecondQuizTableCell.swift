//
//  SecondQuizTableCell.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 22/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class SecondQuizTableCell: BaseTableViewCell {
    
    let alternativeLabel: UILabel = {
        let label = UILabel.nameCandidate()
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    
    override func initialize() {
        self.selectionStyle = .none
        backgroundColor = .white
        
        addSubview(alternativeLabel)
        
        
        alternativeLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.right.equalToSuperview()
            make.height.equalTo(20)
            
        }
    }


}
