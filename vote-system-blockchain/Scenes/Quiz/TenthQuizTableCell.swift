//
//  TenthQuizTableCell.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 25/08/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class TenthQuizTableCell: BaseTableViewCell {
    
    let alternativeLabel: UILabel = {
        let label = UILabel.unselected()
        label.textColor = UIColor.gray
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    let selectView: UIView = {
        let v = UIView()
        v.layer.borderWidth = 2
        v.layer.borderColor = UIColor.gray.cgColor
        v.backgroundColor = UIColor.white
        v.layer.cornerRadius = 8
        return v
    }()
    
    
    override func initialize() {
        self.selectionStyle = .none
        backgroundColor = .white
        
        addSubview(selectView)
        addSubview(alternativeLabel)
        
        // MARK: selectView
        selectView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.centerY.equalToSuperview()
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        // MARK: alternativeLabel
        alternativeLabel.snp.makeConstraints { make in
            make.left.equalTo(selectView.snp.right).offset(26)
            make.centerY.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
}

