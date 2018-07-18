//
//  SuccessfulVoteViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 18/07/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit

class SuccessfulVoteViewController: BaseViewController {

    private let nameLabel: UILabel = {
        let l = UILabel.title()
        l.text = "Seu voto foi Registrado com\n sucesso"
        l.textColor = .black
        l.numberOfLines = 2
        l.textAlignment = .center
        return l
    }()
    
    private let partyLabel: UILabel = {
        let label = UILabel.subtitle()
        label.text = "PLA"
        label.textColor = UIColor.black
        label.textAlignment = .center
        return label
    }()
    
    private let viceLabel: UILabel = {
        let label = UILabel.subtitle()
        label.text = "Marcel Valverde"
        label.textColor = UIColor.black
        label.textAlignment = .center
        return label
    }()
    
    private let picImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 12
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "cand1")
        return iv
    }()
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .always
        self.title = "Parabéns!"
        setupNavigationMultilineTitle()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        view.backgroundColor = .white
        view.addSubview(nameLabel)
        view.addSubview(partyLabel)
        view.addSubview(viceLabel)
        view.addSubview(picImageView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func setupConstraints() {
        
        // MARK: picImageView
        picImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.height.equalTo(137)
            make.width.equalTo(110)
            make.centerX.equalToSuperview()
        }
        
        // MARK: nameLabel
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(picImageView.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        // MARK: partyLabel
        partyLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        // MARK: viceLabel
        viceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(partyLabel.snp.bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
}
