//
//  ViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 11/05/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: BaseViewController {
    
    private let titleLabel: UILabel = {
        let l = UILabel.title()
        l.text = "Preparado para \nEscolher o rumo do \nBrasil?"
        l.textColor = .black
        l.numberOfLines = 3
        l.textAlignment = .left
        return l
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func setupConstraints() {
        
        // MARK: titleLabel
        titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(107)
            make.right.equalToSuperview().offset(-24)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

