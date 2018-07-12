//
//  CandidatesTableCell.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 12/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class CandidatesTableCell: BaseTableViewCell {

    private let nameLabel: UILabel = {
        let l = UILabel()
        l.textAlignment = .left
        l.text = "Teste"
        l.textColor = .black
        l.numberOfLines = 3
        
        return l
    }()
    
    override func initialize() {
        self.selectionStyle = .none
        backgroundColor = .blue
        
        addSubview(nameLabel)
        
        nameLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(11)
            make.top.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    



}
