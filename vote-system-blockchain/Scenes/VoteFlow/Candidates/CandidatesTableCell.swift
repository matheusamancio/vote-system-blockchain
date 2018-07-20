//
//  CandidatesTableCell.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 12/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class CandidatesTableCell: BaseTableViewCell {

    let nameLabel: UILabel = {
        let label = UILabel.nameCandidate()
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    let partyLabel: UILabel = {
        let label = UILabel.partyCandidate()
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    let viceLabel: UILabel = {
        let l = UILabel.viceCandidate()
        l.textAlignment = .left
        l.textColor = .black
        l.numberOfLines = 1
        return l
    }()
    
    let picImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 12
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    
    override func initialize() {
        self.selectionStyle = .none
        backgroundColor = .white
        
        addSubview(nameLabel)
        addSubview(partyLabel)
        addSubview(viceLabel)
        addSubview(picImageView)
        
        picImageView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.height.equalTo(67)
            make.width.equalTo(67)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(picImageView.snp.right).offset(11)
            make.top.equalTo(picImageView.snp.top).offset(5)
            make.right.equalToSuperview()
            make.height.equalTo(20)

        }
        
        partyLabel.snp.makeConstraints { make in
            make.left.equalTo(nameLabel.snp.left)
            make.top.equalTo(nameLabel.snp.bottom)
            make.right.equalToSuperview()
            make.height.equalTo(20)

        }
        
        viceLabel.snp.makeConstraints { make in
            make.left.equalTo(partyLabel.snp.left)
            make.top.equalTo(partyLabel.snp.bottom)
            make.right.equalToSuperview()
            make.height.equalTo(18)

        }
    }
    



}
